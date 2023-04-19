#!/bin/bash

echo "Beginning updating the server..."

apt-get update
apt-get upgrade -y

apt-get install apache2 unzip -y

echo "Donwloading application files..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finish updating..."
