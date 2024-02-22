#!/bin/bash

counter=1

while true
do
 echo "Value is $counter"
 counter=$(($counter*2))
 sleep 1
 echo
done


