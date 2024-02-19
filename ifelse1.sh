#!/bin/bash

read -p "Enter a number: " NUM

if [ $NUM -gt 100 ]
then
  echo "$NUM is greater than 100"
  sleep 3
  echo
  date
else
  echo "$NUM is less than 100"
fi

echo "Script executed successfuly"
