#!/bin/sh -e
sudo su
wget -bqc 
https://www.apachefriends.org/xampp-files/7.3.2/xampp-linux-x64-7.3.2-0-installer.run
apt -y install git
chmod +x ./xampp
