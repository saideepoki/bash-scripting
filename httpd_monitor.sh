#!/bin/bash

echo "######################################################"
echo "Current data and time: "
date

ls /var/run/httpd/httpd.pid > /dev/null

if [ $? -eq 0 ]
then
  echo "HTTPD is running"
else
  echo "Strating HTTPD service"
  systemctl start httpd
  if [ $? -eq 0 ]
  then
    echo "HTTPD service has been successfully started"
  else
    echo "Couldn't start the service. Please contact admin"
  fi
fi
echo "##########################################################"
echo

