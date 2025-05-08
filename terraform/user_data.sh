#!/bin/bash

# Update and install required packages
sudo apt update -y
sudo apt install -y apache2 unzip wget

# Download the zip file
wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip -P /tmp

# Unzip the file
unzip /tmp/2135_mini_finance.zip -d /tmp

# Clean the default Apache web root
sudo rm -rf /var/www/html/*

# Move website content
sudo mv /tmp/2135_mini_finance/* /var/www/html/

# Set ownership for Apache
sudo chown -R www-data:www-data /var/www/html/

# Start and enable Apache
sudo systemctl start apache2
sudo systemctl enable apache2
