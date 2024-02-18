#!/bin/bash

PACKAGE="zip unzip wget httpd"
SERVICE="httpd"
URL="https://www.tooplate.com/zip-templates/2135_mini_finance.zip"
TMPDIR="/tmp/webfiles"
ART_NAME="2135_mini_finance"

#Installing Dependencies
echo "####################################"
echo "INSTALLING PACKAGES"
echo "####################################"
sudo yum install $PACKAGE -y > /dev/null

# Starting and enabling services
echo "####################################"
echo "STARTING AND ENABLING HTTPD SERVICE"
echo "####################################"
echo
sudo systemctl start $SERVICE
sudo systemctl enable $SERVICE

# Creating temp files and extracting website files from internet
echo "####################################"
echo "STARTING ARTIFACT DEPLOYMENT"
echo "####################################"
echo
sudo mkdir -p $TMPDIR
cd $TMPDIR

# Extracting web files
wget $URL
unzip $ART_NAME.zip
sudo cp -r $ART_NAME/* /var/www/html/

# restarting httpd service
echo "####################################"
echo "RESTARTING HTTPD SERVICE"
echo "####################################"
echo
systemctl restart $SERVICE

#Clean up
echo "####################################"
echo "REMOVING TEMPORARY FILES"
echo "####################################"
rm -rf $TMPDIR
