#!/bin/bash

rm lswdwdw > /dev/null 2>&1

if [ $? -eq 0 ];
then
    echo "Last command exited successful"
else
    echo "Last command failed status is $?"
    exit 1
fi
