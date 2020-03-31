#!/bin/bash
# Author: Sabuhi Gurbani
# Version: 1.0.0
# Usage: Bu script parametre almaz ve ILO-nu resetler.Static ip vererek default ip-lerine dondurur.

if [ $# -ne 0 ];
then
    echo "Please use $0 without any argument."
fi

KONTROL=$(dmidecode | grep -A3 '^System Information' | awk NR==2 |awk '{print $2}')
DEF_IP=192.168.0.120
DEF_NETMASK=255.255.255.0
DEF_GW=192.168.0.0
if [ $# -eq 0 ];
then
    if [[ $KONTROL = "Dell" ]];
    then 
        echo $(ipmitool lan set 1 ipsrc static)
        echo $(ipmitool lan set 1 ipaddr $DEF_IP )
        echo $(ipmitool lan set 1 netmask $DEF_NETMASK )
        echo $(ipmitool lan set 1 defgw ipaddr $DEF_GW )
    else 
        echo "Process is not compatible with this machine" 
    fi
fi 
