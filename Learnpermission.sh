#!/bin/bash

#In this script, just we want to check file permissions with helps of some arguments.
#You can try with helps of "<ls -l>" instead of this script.But we want to learn Bash for automation.
#You learn permissions for user that you are logged in.

if [ $# -ne 1 ];
then
    echo "Please write 1 argument in the $0"
    exit 1
    echo $?
fi 

#Check File permissions

FILE=$1
if [ -f $FILE ];
then
    VAR_READ="NO"
    VAR_WRITE="NO"
    VAR_EXE="NO"

    if [ -r $FILE ];
    then 
        VAR_READ="YES"
    fi 

    if [ -w $FILE ];
    then
        VAR_WRITE="YES"
    fi

    if [ -x $FILE ];
    then
        VAR_WRITE="YES"
    fi

    echo ====FILE : $FILE====
    echo READ : $VAR_READ
    echo WRITE : $VAR_WRITE
    echo EXECUTE : $VAR_EXE
else   
    if [ -d $FILE ];
    then    
        echo "This is Directory.Please search permissions for 'Files'"
    fi
fi 