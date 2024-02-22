#!/bin/bash

USERS="alpha beta gamma"

for usr in $USERS
do
  echo "Adding USER $usr"
  useradd $usr
  id $usr
  echo
done
