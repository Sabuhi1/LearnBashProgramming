#!/bin/bash

#In this script, we test IP adress is reachable or not.We do that help with REGEX.REGEX means that :Regular Expressions:

if [ $# -ne 1 ];
then
    echo "Use 1 argument for $0"
    exit 1
    echo $?
fi

VAR=$1
REGEX="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1-3}"     # 0-9 arasi  {1,3}--> 3 reqem-e qeder yazila biler.

#regex check
if ! [[ $VAR =~ $REGEX ]];         #scriptden sonra yazilan parametr REGEX ile eynidirmi.Yeni [0-9]{1,3} syntax uygundurmu.
then
    echo " No IP Adress Provided "
    exit 2
    echo $?
fi 

IP={BASH_REMATCH[0]}  #REGEX-in icerisindeki valueni kontrol edenden sora bura daxil et.

#find IP adress is reachable or not.
ping -c4 $IP
if [ $? -ne 0 ];
then
    STATUS="DEAD"
else
    STATUS="ALIVE"
fi

echo "Ip Found : $IP $STATUS"









