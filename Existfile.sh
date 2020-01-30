#! /bin/bash

echo "########################################"

if  [ -r /c/Users/Tux/Desktop/Bash-Repo/Bash.sh ] && [ -s /c/Users/Tux/Desktop/Bash-Repo/Bash.sh ]
then
    echo " this file is exist and is not empty "
else
    echo " This file is exist but is empty"
fi 
echo "########################################"
