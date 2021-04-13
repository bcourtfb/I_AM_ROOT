#!/bin/bash

# ------------------------------------------------------
# Colors
# Usage: (echo or echo) "${COLOR}TEXT HERE${NOCOLOR}"
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
	echo "${CYAN}

    ░▀█▀░█░█░▀█▀░█▀▀░░░█▀▀░█▀▀░█▀▄░▀█▀░█▀█░▀█▀░░░█▄█░█░█░█▀▀░▀█▀░░░█▀▄░█▀▀
    ░░█░░█▀█░░█░░▀▀█░░░▀▀█░█░░░█▀▄░░█░░█▀▀░░█░░░░█░█░█░█░▀▀█░░█░░░░█▀▄░█▀▀
    ░░▀░░▀░▀░▀▀▀░▀▀▀░░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░░░▀░░░░▀░▀░▀▀▀░▀▀▀░░▀░░░░▀▀░░▀▀▀
    ░█▀▄░█▀█░█▀█░░░█▀█░█▀▀░░░█▀▄░█▀█░█▀█░▀█▀░░░█▀█░█▀▄░░░█▀▀░█░█░█▀▄░█▀█
    ░█▀▄░█▀█░█░█░░░█▀█░▀▀█░░░█▀▄░█░█░█░█░░█░░░░█░█░█▀▄░░░▀▀█░█░█░█░█░█░█
    ░▀░▀░▀░▀░▀░▀░░░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀▀▀░░▀░░░░▀▀▀░▀░▀░░░▀▀▀░▀▀▀░▀▀░░▀▀▀

    ${NOCOLOR}"
	exit 1
fi

echo "${RED}

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
             .               _d#####^#####m__              ,
              ^*w_________am#####P^   ~9#####mw_________w*^
                  ^^9@#####@M^^           ^^P@#####@M^^
 ${NOCOLOR}"
sleep 1
echo "${RED}                                                                               
      @@@         @@@@@@   @@@@@@@@@@         @@@@@@@    @@@@@@    @@@@@@   @@@@@@@"
sleep .1
echo "${RED}  
      @@@        @@@@@@@@  @@@@@@@@@@@        @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@"
sleep .1
echo "${RED}        
      @@!        @@!  @@@  @@! @@! @@!        @@!  @@@  @@!  @@@  @@!  @@@    @@!"
sleep .1
echo "${RED}    
      !@!        !@!  @!@  !@! !@! !@!        !@!  @!@  !@!  @!@  !@!  @!@    !@!"
sleep .1
echo "${RED}    
      !!@        @!@!@!@!  @!! !!@ @!@        @!@!!@!   @!@  !@!  @!@  !@!    @!!"
sleep .1
echo "${RED}    
      !!!        !!!@!!!!  !@!   ! !@!        !!@!@!    !@!  !!!  !@!  !!!    !!!"
sleep .1
echo "${RED}   
      !!:        !!:  !!!  !!:     !!:        !!: :!!   !!:  !!!  !!:  !!!    !!:"
sleep .1
echo "${RED}    
      :!:        :!:  !:!  :!:     :!:        :!:  !:!  :!:  !:!  :!:  !:!    :!:"
sleep .1
echo "${RED}  
       ::        ::   :::  :::     ::         ::   :::  ::::: ::  ::::: ::     ::"
sleep .1
echo "${RED}
      :           :   : :   :      :           :   : :   : :  :    : :  :      :     
                                                                               
${NOCOLOR}"

# echo "$(tput bold)Creating Directory at /home/USER/I_AM_ROOT"
# mkdir /home/$whoami/I_AM_ROOT
# mkdir /home/$whoami/I_AM_ROOT/$IP_ADDRESS
#Function to check IP address is in the proper format

function validateIP(){
    IP_ADDRESS="$1"
    #Check if the format looks rightsdfasdffghdfghfghfg
    echo "$IP_ADDRESS" | grep -E -qE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' || return 1
    #Check that each octect is less than or equal to 255:
    echo "$IP_ADDRESS" | awk -F'.' '$1 <=255 && $2 <= 255 && $3 <=255 && $4 <= 255 {print "Y" } ' | grep -q Y || return 1
    return 0
}


echo
sleep 2
#Ask for user input
echo "${GREEN}Enter a valid IP: ${NOCOLOR}" 
read -r IP_ADDRESS
sleep 1
# While loop to validate the IP provided, if ip is not valid then it will ask for a valid ip
while ! validateIP "$IP_ADDRESS"
do
    echo "${RED}Invalid IP Format"
    sleep .1
    echo
    echo "${GREEN}Enter a valid IP: ${NOCOLOR}" 
    read -r IP_ADDRESS
done
# corey
# oogaboogatooga

#Function with expect commands to ssh into remote host and execute commands. 
# It will attemp to gather info for possible privilge escalation

DIR=/home/$USERNAME/IAMROOT
F=Info.txt
SND=send \"
P1="printf "${RED}####################""
P2="####################${NOCOLOR} >>"
P3="${F}\r\""
function borrowing_without_permission {
        expect -c "\
        set timeout 300
        set env(TERM)
        spawn ssh -t "$USERNAME\@$IP_ADDRESS"
        sleep 1
        expect_before \"*(yes/no)?\" {
        ${SND}yes\r\" 
        ${SND}$PASSWD\r\"
        }
        sleep 2
        expect \"*assword*\"
        ${SND}$PASSWD\r\"
        sleep 2
        ${SND}mkdir ${DIR}\r\"
        sleep 2
        ${SND}touch $DIR/${P3}
        sleep 2
        ${SND}${P1}SUDO_COMMANDS${P2}${P3}
        sleep 2
        ${SND}sudo -l >> $DIR/$F\\n\r\"
        sleep 2
        expect \"*assword*\"
        ${SND}$PASSWD\r\"
        sleep 2
        ${SND}${P1}$USERNAME_PATH${P2}
        ${SND}echo $PATH >> $DIR/$F && echo ""\r\"
        ${SND}rm file.txt\r\"
        interact
        ${SND}exit\r\"
   "
}
borrowing_without_permission