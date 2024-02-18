#!/bin/bash

sudo systemctl stop httpd
rm -rf /var/www/html/*
sudo yum remove zip unzip httpd wget -y
