#!/bin/bash
# Author: Sabuhi Gurbani
# Version: 1.0.0
# Usage: ./PikotvDynamic.sh ipadresini DHCP atamak icin kullanilir.
# CLI-dan 14-cu satirdaki kod çalıştırılır, DELL için spesifik racdm tool-u kullanılır.


if [ $# -eq 0 ];
then
    echo $(ipmitool lan set 1 ipsrc dhcp)
    if [ $? -ne 0 ];
    then
        echo $(racadm setniccfg -d)
    fi 

    if [ $? -eq 0 ];
    then
        echo "Dynamic ip successfully added"
    else
        echo "Process if failed.Try again"
    fi 
else 
    echo "Use without argument for $0"
fi  


