#!/bin/bash
echo "========== LAMP Installation ========="
sleep 3
echo "Installing Update..."
sudo apt-get update

echo "Installing Apache2..."
sudo apt-get install apache2 -y #-y tells apt-get not to prompt you
sudo apache2ctl configtest

echo "Modifying incoming traffic"
sudo ufw allow in "Apache Full"

echo "Installing Mysql..."
sudo apt-get install mysql-server -y

echo "Installing php..."
sudo apt install php libapache2-mod-php php-mcrypt php-mysql -y
