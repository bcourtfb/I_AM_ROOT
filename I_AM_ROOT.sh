#!/usr/bin/env bash
#
# i_am_root.sh - credentialed Linux privilege-escalation enumeration helper
#
# Logs into a host you ALREADY have valid SSH credentials for, runs a standard
# read-only enumeration pass (users, SUID files, sudo rights, kernel, and the
# shadow file if permitted), pulls the results back, and cross-references them
# against searchsploit and GTFOBins.
#
# AUTHORIZED USE ONLY: run this against systems you own or are explicitly
# permitted to test (your own VMs, CTF/lab boxes, in-scope engagements).
#
# Requires : bash, ssh   (plus sshpass ONLY if you use password auth)
# Optional : searchsploit (exploitdb), curl or lynx
#
# Authentication: choose password auth (via sshpass) or an SSH private key
# at runtime. With a key, sudo still needs a password unless the account has
# NOPASSWD sudo - you'll be prompted for one separately (blank = skip the
# privileged checks).
#
# Why this version is portable: the original drove an interactive SSH session
# with `expect` plus fixed `sleep` delays and matched exact prompt strings and
# hardcoded paths, so it only worked on one specific VM. This version runs the
# whole enumeration as a SINGLE non-interactive command over SSH and captures
# the output directly, so it works on essentially any Linux host you can log
# into, regardless of shell, prompt, or home-directory layout.

set -uo pipefail
# NOTE: deliberately NOT `set -e`. Individual enumeration steps are allowed to
# fail (e.g. no sudo rights, no shadow access) without aborting the whole run.

# -------------------------------------------------------------- colors ------
NOCOLOR=$'\033[0m'; RED=$'\033[0;31m'; GREEN=$'\033[0;32m'; PURPLE=$'\033[0;35m'

GTFO_FILE=""        # set by gtfobins_scan if any matches are found
AUTH_METHOD=password # "password" or "key"; set by choose_auth
SSH_KEY=""          # private key path for key auth (empty = agent/default)
PASSWD=""           # SSH password (password auth only)
SUDO_PW=""          # password used for remote sudo -S
KEYOPT=()           # extra ssh options for the chosen auth method
CTL=""              # ssh ControlPath socket (reuses one connection)

# typewriter printer:  type_out COLOR "text"
# (one definition replaces the ~25 copy-pasted read/sleep loops in the original)
type_out() {
    local color=$1 text=$2 c
    while IFS= read -rn1 c; do
        printf '%s%s%s' "$color" "$c" "$NOCOLOR"
        sleep 0.02
    done <<< "$text"
    echo
}

divider() { printf '%s%s%s\n' "$PURPLE" "############################################################" "$NOCOLOR"; }

# -------------------------------------------------------------- banner ------
banner() {
    printf '%s' "$GREEN"
    cat <<'ART'
  ############################################
  #            I   A M   R O O T             #
  #   linux privilege-escalation enumeration #
  ############################################
ART
    printf '%s\n' "$NOCOLOR"
    # (Paste your original ASCII-art banner here if you want the full version.)
}

# -------------------------------------------------------- dependencies ------
require() { command -v "$1" >/dev/null 2>&1; }

check_deps() {
    if ! require ssh; then
        type_out "$RED" "Missing required tool: ssh"
        exit 1
    fi
    require searchsploit || type_out "$RED" "searchsploit not found - kernel exploit search will be skipped."
    if ! require curl && ! require lynx; then
        type_out "$RED" "Neither curl nor lynx found - GTFOBins lookup will be skipped."
    fi
}

# Ask how to authenticate and collect the matching secrets / key path.
choose_auth() {
    local m
    echo
    echo "  Authentication method:"
    echo "    1 - Password (via sshpass)"
    echo "    2 - SSH private key"
    read -rp "  Select [1/2]: " m

    if [[ $m == 2 ]]; then
        AUTH_METHOD=key
        read -rp "  Private key path [blank = ssh-agent / ssh default]: " SSH_KEY
        if [[ -n $SSH_KEY ]]; then
            SSH_KEY=${SSH_KEY/#\~/$HOME}            # expand a leading ~
            [[ -r $SSH_KEY ]] || { type_out "$RED" "Key not readable: $SSH_KEY"; exit 1; }
            KEYOPT=(-i "$SSH_KEY" -o IdentitiesOnly=yes)
        fi
        # Don't let a bad key silently fall back to a password prompt (which
        # would hang the non-interactive enumeration). A passphrase prompt for
        # the key itself is still allowed.
        KEYOPT+=(-o PreferredAuthentications=publickey -o PasswordAuthentication=no)
        read -rsp "  sudo password (blank to skip privileged checks): " SUDO_PW; echo
    else
        AUTH_METHOD=password
        if ! require sshpass; then
            type_out "$RED" "Password auth needs sshpass. Install it (sudo apt-get install -y sshpass) or use a key."
            exit 1
        fi
        read -rsp "  SSH password: " PASSWD; echo
        SUDO_PW=$PASSWD
    fi
}

# ----------------------------------------------------------- validation -----
# Accept either an IPv4 address (octets <= 255) or a plain hostname.
valid_target() {
    local t=$1 o
    if [[ $t =~ ^[0-9]{1,3}(\.[0-9]{1,3}){3}$ ]]; then
        local IFS=.
        for o in $t; do ((o <= 255)) || return 1; done
        return 0
    fi
    [[ $t =~ ^[A-Za-z0-9._-]+$ ]]
}

# ------------------------------------------------------- remote enum --------
SSHOPTS=(-o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -T)

# Run ssh with the chosen auth method. Anything in "$@" becomes the remote
# command; stdin/stdout/redirection are handled by the caller. The first call
# opens a master connection (ControlMaster) that later calls reuse, so a key
# passphrase or password is only needed once.
ssh_run() {
    if [[ $AUTH_METHOD == password ]]; then
        sshpass -p "$PASSWD" ssh "${SSHOPTS[@]}" "${KEYOPT[@]}" "$USERNAME@$TARGET" "$@"
    else
        ssh "${SSHOPTS[@]}" "${KEYOPT[@]}" "$USERNAME@$TARGET" "$@"
    fi
}

# Tear down the shared master connection on exit.
cleanup() {
    if [[ -n $CTL && -S $CTL ]]; then
        ssh "${SSHOPTS[@]}" "${KEYOPT[@]}" -O exit "$USERNAME@$TARGET" 2>/dev/null
    fi
    [[ -n $CTL ]] && rm -f "$CTL" 2>/dev/null
}

test_connection() {
    type_out "$GREEN" "Testing SSH connection to $USERNAME@$TARGET ..."
    if ! ssh_run true 2>/dev/null; then
        type_out "$RED" "Could not SSH to $USERNAME@$TARGET - check the host, credentials/key, and network."
        exit 1
    fi
}

run_enum() {
    type_out "$GREEN" "Running enumeration (no further input needed, please wait) ..."
    # The remote script is sent on stdin to `bash -s`. The sudo password is
    # passed in via an env var, shell-quoted with printf %q so special
    # characters survive. The heredoc is single-quoted ('REMOTE') so LOCAL
    # variables are NOT expanded here - only $SUDO_PW, which exists remotely.
    ssh_run "SUDO_PW=$(printf %q "$SUDO_PW") bash -s" <<'REMOTE' > "$INFO" 2>&1
set +e
sec() { printf '\n=== %s ===\n' "$1"; }
sec HOST;    hostname 2>/dev/null; uname -a; [ -r /etc/os-release ] && cat /etc/os-release
sec WHOAMI;  id
sec PATH;    printf '%s\n' "$PATH"
sec PASSWD;  cat /etc/passwd 2>/dev/null
sec SUDO;    printf '%s\n' "$SUDO_PW" | sudo -S -l 2>/dev/null || echo "[no sudo rights / wrong password]"
sec SHADOW;  printf '%s\n' "$SUDO_PW" | sudo -S cat /etc/shadow 2>/dev/null || echo "[no access]"
sec SUID;    find / -perm -4000 -type f 2>/dev/null
sec KERNEL;  uname -r
REMOTE
    type_out "$GREEN" "Enumeration complete. Raw report: $INFO"
}

# Print the lines belonging to one "=== NAME ===" section of the report.
section() {
    awk -v s="=== $1 ===" '
        $0 == s          { grab = 1; next }
        /^=== .* ===$/   { grab = 0 }
        grab' "$INFO"
}

# ------------------------------------------------------------ analysis ------
gtfobins_has() {   # arg: binary name -> 0 if a GTFOBins page exists
    local b=$1 code
    if require curl; then
        code=$(curl -s -o /dev/null -w '%{http_code}' "https://gtfobins.github.io/gtfobins/$b/")
        [[ $code == 200 ]]
    elif require lynx; then
        lynx -dump "https://gtfobins.github.io/gtfobins/$b/" 2>/dev/null | grep -qi "$b"
    else
        return 1
    fi
}

gtfobins_scan() {
    if ! require curl && ! require lynx; then
        type_out "$RED" "GTFOBins lookup skipped (need curl or lynx)."
        return
    fi
    type_out "$GREEN" "Checking SUID binaries against GTFOBins ..."
    local out="$WORKDIR/gtfobins-$STAMP.txt" found=0 b
    : > "$out"
    while IFS= read -r b; do
        [[ -z $b ]] && continue
        if gtfobins_has "$b"; then
            found=1
            printf '### %-15s https://gtfobins.github.io/gtfobins/%s/\n' "$b" "$b" >> "$out"
        fi
    done < <(section SUID | sed 's#.*/##' | sort -u)
    if ((found)); then
        type_out "$GREEN" "SUID binaries with known GTFOBins techniques written to: $out"
        GTFO_FILE="$out"
    else
        type_out "$RED" "No SUID binaries matched GTFOBins."
        rm -f "$out"
    fi
}

analyze() {
    divider
    # --- /etc/shadow -------------------------------------------------------
    if section SHADOW | grep -q '^root:[^*!:]'; then
        type_out "$GREEN" "/etc/shadow is readable and holds a root password hash."
        echo "  -> Combine it with /etc/passwd:  unshadow passwd shadow > hashes"
        echo "     then crack offline with John the Ripper or hashcat."
    else
        type_out "$RED" "No usable root hash available from /etc/shadow."
    fi
    echo

    # --- sudo -l -----------------------------------------------------------
    local sudo_cmds
    sudo_cmds=$(section SUDO | sed -n '/may run the following/,$p' | sed '1d')
    if [[ -n ${sudo_cmds//[[:space:]]/} ]]; then
        type_out "$GREEN" "User '$USERNAME' may run these commands via sudo:"
        printf '%s\n' "$sudo_cmds"
        echo "  -> Check each against GTFOBins ('Sudo' section) for an escalation path."
    else
        type_out "$RED" "No sudo rights detected (or the password was rejected)."
    fi
    echo

    # --- kernel / searchsploit --------------------------------------------
    local kver short
    kver=$(section KERNEL | head -n1)
    type_out "$GREEN" "Kernel version: ${kver:-unknown}"
    if require searchsploit && [[ -n $kver ]]; then
        short=${kver%%-*}          # e.g. 5.4.0 from 5.4.0-42-generic
        echo "searchsploit results for 'linux kernel $short':"
        searchsploit "linux kernel" "$short" 2>/dev/null || true
    fi
    echo

    # --- SUID / GTFOBins ---------------------------------------------------
    gtfobins_scan
    divider
}

# -------------------------------------------------------------- menu --------
menu() {
    local sel
    while true; do
        echo
        echo "  1 - View SUID/GTFOBins privesc guide"
        echo "  2 - View full enumeration report"
        echo "  3 - Exit"
        read -rp "  Select: " sel
        case $sel in
            1) if [[ -n $GTFO_FILE && -s $GTFO_FILE ]]; then
                   "${PAGER:-less}" "$GTFO_FILE"
               else
                   echo "No GTFOBins matches were found."
               fi ;;
            2) "${PAGER:-less}" "$INFO" ;;
            3) echo "Goodbye."; return 0 ;;
            *) echo "Invalid selection." ;;
        esac
    done
}

# -------------------------------------------------------------- main --------
main() {
    clear
    banner
    check_deps

    read -rp "Target IP/host : " TARGET
    while ! valid_target "$TARGET"; do
        read -rp "Invalid target. Enter a valid IP or hostname: " TARGET
    done
    read -rp  "SSH username   : " USERNAME

    choose_auth

    # Reuse a single SSH connection for the test + enumeration so a key
    # passphrase / password is only entered once.
    CTL="${TMPDIR:-/tmp}/iar-$$-$RANDOM.sock"
    SSHOPTS+=(-o ControlMaster=auto -o ControlPath="$CTL" -o ControlPersist=30)
    trap cleanup EXIT

    WORKDIR="$(pwd)/I_AM_ROOT/$TARGET"
    mkdir -p "$WORKDIR"
    STAMP=$(date +%Y.%m.%d-%H.%M.%S)
    INFO="$WORKDIR/enum-$STAMP.txt"

    test_connection
    run_enum
    analyze
    menu
}

main "$@"
