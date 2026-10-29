
I_AM_ROOT
A post-exploitation enumeration helper for Linux. Given a host you already have valid SSH credentials for, I_AM_ROOT logs in, runs a standard privilege-escalation enumeration pass, pulls the results back to your machine, and cross-references them against searchsploit and GTFOBins — so you can review the most common escalation paths all in one place instead of running and researching each command by hand.

Results are saved to a timestamped file on your machine, so you can review them later without re-running the tool.

⚠️ Authorized use only. This tool requires valid login credentials and is intended for systems you own or are explicitly permitted to test — your own VMs, CTF/lab boxes, or in-scope penetration-testing engagements. Using it against systems without authorization is illegal.

What it collects
On the target host the tool gathers:

Hostname, uname -a, and /etc/os-release
Current user context (id)
$PATH
/etc/passwd
sudo -l (commands the user may run as sudo)
/etc/shadow (only if sudo permits it)
SUID files (find / -perm -4000 -type f)
Kernel version
It then analyzes the results locally and reports:

Whether /etc/shadow yielded a root hash (with an unshadow → John/hashcat hint)
The user's available sudo commands
searchsploit matches for the target's kernel version
SUID binaries with known GTFOBins techniques (written to a separate file)
Requirements
Your machine (where you run the script):

Tool	Needed for
bash, ssh	required
sshpass	required only if you use password authentication
searchsploit (exploitdb)	optional — kernel exploit search
curl or lynx	optional — GTFOBins lookup
Missing optional tools are skipped with a warning (the tool does not auto-install anything).

The target host: bash and an account you can SSH into. sudo access is only needed for the sudo -l / /etc/shadow steps — without it, those steps are skipped and the rest still runs.

Install the optional tools on Debian/Kali, for example:

sudo apt-get install -y sshpass exploitdb curl
Usage
bash I_AM_ROOT.sh
The script will prompt you for:

Target IP or hostname
SSH username
Authentication method:
Password (via sshpass), or
SSH private key (give a key path, or leave blank to use your ssh-agent / default key)
sudo password — password auth reuses your SSH password; with a key you're asked separately (leave blank to skip the privileged checks)
It then tests the connection, runs the enumeration in one pass, prints a summary, and opens a small menu to review the findings.

No sudo/root is required on your own machine to run the script.

Output
Everything is saved under the current directory:

./I_AM_ROOT/<target>/enum-<timestamp>.txt       # full raw enumeration report
./I_AM_ROOT/<target>/gtfobins-<timestamp>.txt   # SUID binaries matched on GTFOBins (if any)
How it works
Rather than driving an interactive SSH session, the tool sends a single enumeration script over SSH and captures the output directly. This makes it portable across different distributions, shells, prompts, and home-directory layouts.

Linux Privilege Escalation map Local Linux Privilege Escalation mind map — created by Sagi Shahar (@s4gi_).

Replace privesc-map.png above with your repo's actual image filename.

License
Released under the GPL-2.0 license. See LICENSE for details.

