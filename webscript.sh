#!/bin/bash


#Installing Dependencies
echo "####################################"
echo "INSTALLING PACKAGES"
echo "####################################"
sudo yum install wget zip unzip httpd -y > /dev/null

# Starting and enabling services
echo "####################################"
echo "STARTING AND ENABLING HTTPD SERVICE"
echo "####################################"
echo
sudo systemctl start httpd
sudo systemctl enable httpd

# Creating temp files and extracting website files from internet
echo "####################################"
echo "STARTING ARTIFACT DEPLOYMENT"
echo "####################################"
echo
sudo mkdir -p /tmp/webfiles
cd /tmp/webfiles

# Extracting web files
wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip
unzip 2135_mini_finance.zip
sudo cp -r 2135_mini_finance/* /var/www/html/

# restarting httpd service
echo "####################################"
echo "RESTARTING HTTPD SERVICE"
echo "####################################"
echo
systemctl restart httpd

#Clean up
echo "####################################"
echo "REMOVING TEMPORARY FILES"
echo "####################################"
rm -rf /tmp/webfiles
