#!/bin/bash

FREE=`free -m | grep Mem | awk '{print $4}'`
UP=`uptime | awk '{print $9}'`

echo "Welcome $USERNAME on $HOSTNAME"

echo
echo

echo "##################################"
echo "Available free space is $FREE MB"
echo "##################################"
echo
echo


echo "##################################"
echo "Average load time is $UP"
echo "##################################"
echo
