#!/bin/bash
# Author: Sabuhi Gurbani
# Version: 1.0.0
# Usage: ./iloman.sh ipAddress netMask gateWay  parametrelerini alir. 
# Bunu ipAddress--> static ip adresi ekler, netMask --> netmask ekler,  gateWay --> def_gateway ekler


if [ $# -ne 3 ];
then
    echo "Use 3 argument for $0"
    exit 1
fi

ipAddress=$1
netMask=$2
gateWay=$3
REGEX="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1-3}"

if ! [[ $ipAddress =~ $REGEX ]] && if ! [[ $netMask =~ $REGEX ]]; && if ! [[ $gateWay =~ $REGEX ]]; 
then
   stat=0
   echo $(ipmitool lan set 1 ipsrc static)
   if ! [ $? -eq 0 ];
   then 
        stat=1
   fi

   echo $(ipmitool lan set 1 ipaddr $1)
   if ! [ $? -eq 0 ];
   then 
        stat=1
   fi

   echo $(ipmitool lan set 1 netmask $2)
   if ! [ $? -eq 0 ];
   then 
        stat=1
   fi

   echo $(ipmitool lan set 1 defgw ipaddr $3)
   if ! [ $? -eq 0 ];
   then 
        stat=1
   fi

   if ! [ $stat -eq 0 ];
   then 
        echo $(racadm setniccfg -s $1 $2 $3)
        echo $(set config)
    fi 
else:
    echo "Try again. IP address is false"
    exit
fi 

if [ $? -eq 0 ]; 
then 
    echo "This process was ended successfully "
else 
    echo "Try again please"
fi 