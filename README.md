# I_AM_ROOT

This script is a post exploitation tool that helps pentesters find a way to escalate user privilege using the top 5 commands that are commonly used and gathering information from those commands. Once a valid username and password are provided the script will attempt to connect via ssh to the provided IP. If connection is successful the script will begin gathering information from the remote host and transfer it to the local host.

The goal of this tool is to help pentesters by having a program that will check and give the results of the top privilege escalation commands all at once. This will give the user ease of viewing this information all in one place and being able to decide what direction they can take with the output provided. It will also save the pentester time by not having them have to research each command one at a time. This tool will also give the pentester an added advantage with reviewing this information at a later time because the tool will create a file on their machine with all the information that was gathered thus not having to run the program again.

![privi](https://user-images.githubusercontent.com/73208048/115969205-b4f51900-a4f0-11eb-97e5-cd58f1d46a04.jpg)

# Required Dependencies 

1. EXPECT
    - A program that "talks" to other interactive programs according to a script.
    
2. SSHPASS
    - A utility designed for running ssh using the mode referred to as "keyboard-in‐teractive" password authentication, but in non-interactive mode.

3. SEARCHSPLOIT
    - A command-line search tool that allow you to search through exploits and shellcodes using one or more terms from Exploit-DB.

4. XTERM
    - A terminal emulator for the X Window System that provides a command-line interface within a window.

# Setup Instructions 
1. Start a Linux VM that you own
2. Login to the Linux VM using the corresponding login credentials
3. Open the terminal in Linux VM
4. Download the program by using the getclone command
5. Once downloaded make sure you change permissions to allow you to execute the program
6. Make sure you have the necessary depencies, please note if you do not have them the program will automatically download them on to your machine.
7. Run the program with sudo
8. Setup is now complete please read carefully the output of the script and follow the prompt




