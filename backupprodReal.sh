#!/bin/bash

#This script is backup script. from /c/Users/Tux/prod  to  */backup directory.
PROD=/c/Users/Tux/prod
if [ $# -ne 1 ];       
then
    echo "You must be write 1 arguments after $0.Please try again"
    exit 1
fi 

# Write destination path
DESTINATION=$1         
 if [[ $DESTINATION != */backup ]];    #eger directory sonu backup ile bitmirse kopyalama.
 then  
    echo " Destination path must be end with /backup.Try again $0."
    exit 2    #2 xetasi sonu backup dir. ile bitmeme xetasidir.
fi

#Create folder for backup files.   
DATE=$(date +%Y-%m-%d_%H-%M-%S)
mkdir -p $DESTINATION       #/backup -ile biten directory-ni yarad.

#Copying files from source to destination.
LOOPVALUE=$(cd $PROD | ls -l)
for i in $LOOPVALUE; 
do
    if [[ $i = *.pdf ]]; then
    cp $PROD/$i $DESTINATION/$DATE-$i
    fi 
done 
    
#cp $PROD/*.pdf $DESTINATION/$(date +%Y-%m-%d_%H:%M:%S.$x)       #directory altinda .pdf olan butun fayllari destionation yazilan adrese kopyala.


if [ $? -eq 0 ];
then
    echo "Your backup copying to $DESTINATION.Successfully ended."
else
    echo " Invalid process "
fi