# I_AM_ROOT

This script is a post exploitation tool that helps pentesters find a way to escalate user privilege using the top 5 commands that are commonly used and gathering information from those commands. Once a valid username and password are provided the script will attempt to connect via ssh to the provided IP. If connection is successful the script will begin gathering information from the remote host and transfer it to the local host.

The goal of this tool is to help pentesters by having a program that will check and give the results of the top privilege escalation commands all at once. This will give the user ease of viewing this information all in one place and being able to decide what direction they can take with the output provided. It will also save the pentester time by not having them have to research each command one at a time. This tool will also give the pentester an added advantage with reviewing this information at a later time because the tool will create a file on their machine with all the information that was gathered thus not having to run the program.

![privi](https://user-images.githubusercontent.com/73208048/115969205-b4f51900-a4f0-11eb-97e5-cd58f1d46a04.jpg)




# Required Dependencies 

1. EXPECT
    - A program that "talks" to other interactive programs according to a script.
    
2. SSHPASS
    - A utility designed for running ssh using the mode referred to as "keyboard-in‐teractive" password authentication, but in non-interactive mode.

3. PV
    - Shows the progress of data through a pipeline by giving information such as time elapsed, percentage completed (with progress bar), current throughput rate, total data transferred, and ETA.
