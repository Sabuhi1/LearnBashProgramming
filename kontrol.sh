#!/bin/bash
# Author: Sabuhi Gurbani
# Version: 1.0.0
# Usage: ./PikotvkontrolILO.sh parametre almaz ve Ip, Netmask, Gateway bize gosterir, kontrol etmemizi saglar.
#VAR1=Ilo ip adresi , VAR2=Ilo Netmask , VAR3=Default Gateway adresi

if [ $# -ne 0 ];
then
    echo "Please, use $0 without any argument."
fi

VAR1=$(ipmitool lan print 1 | awk NR==9 | awk '{print $4}')
VAR2=$(ipmitool lan print 1 | awk NR==10 | awk '{print $4}')
VAR3=$(ipmitool lan print 1 | awk NR==14 | awk '{print $5}')

echo "==== ILO Ip Address: $VAR1 ===="
echo "==== ILO Netmask Address: $VAR2 ===="
echo "==== ILO Default Gateway Address: $VAR3 ===="
