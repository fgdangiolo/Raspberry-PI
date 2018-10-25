#!/bin/bash

echo "======================="
echo "Update and Upgrade..."
echo "======================="

sudo apt-get update
sudo apt-get upgrade -y

echo "======================"
echo "Installing Apache..."
echo "======================"

# Install apache 
sudo apt-get install apache2 -y

echo "======================"
echo "Start Apache..."
echo "======================"

# Enable the service apache2
systemctl start apache2   
systemctl enable apache2

echo "======================"
echo "Installing PHP..."
echo "======================"

# Install PHP
sudo apt-get install php libapache2-mod-php -y
sudo service apache2 restart

echo "======================"
echo "Installing MySQL..."
echo "======================"

# Install MySQL
sudo apt-get install mysql-server php-mysql -y
sudo service apache2 restart

# MYSQL: sudo mysql -u root -p
