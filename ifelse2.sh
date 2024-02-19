#!/bin/bash


SCRIPT=`ip addr show | grep -v LOOPBACK | grep -c mtu`

if [ $SCRIPT -eq 1 ]
then
 echo "System has 1 network adapter"
elif [ $SCRIPT -gt 1 ]
then 
 echo "System has $SCRIPT network adapters"
else
 echo "System has no network adapters"
fi

echo "Script executed successfully.." 
