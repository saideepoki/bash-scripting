#!/bin/bash

counter=0

while (($counter < 5))
do
 echo "value is $counter"
 counter=$(($counter + 1))
 sleep 1
 echo
done

echo "out of loop"
