#!/bin/bash

cd C:\Ffmpegssds > /dev/null 2>&1
if [ $? -eq 0 ];
then
    read -p "Write your ffmpeg code : ( e.g ffmpeg -i learning.mp4 -vn sabuhi.mp4 ) :  "
else
    VALUE=$(read -p " The process is failed! Do you want to continue ? Y/n")
    if [ $VALUE = Y ];then
    echo "Sorry.Again execute please!"
    fi 
fi 