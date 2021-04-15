# I_AM_ROOT

This script is intended to be used to gather information that could be useful for privilege escalation. Once a valid username and password are provided the script will attempt to connect via ssh to the provided IP. If connection is successful the script will begin gathering information fromm the remote host and transfer it to the local host.

# Required Dependencies 

1. Expect
    -Expect is a program that "talks" to other interactive programs according to a script.
    
2. SSHPASS
    -sshpass is a utility designed for running ssh using the mode referred to as "keyboard-in‐teractive" 
    password authentication, but in non-interactive mode.

3. PV
    -pv  shows  the  progress  of  data  through a pipeline by giving information such as time
       elapsed, percentage completed (with progress bar), current throughput  rate,  total  data
       transferred, and ETA.