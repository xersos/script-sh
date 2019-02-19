#!/bin/sh -e
sudo wget https://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/7.3.2/xampp-linux-x64-7.3.2-0-installer.run?r=&ts=1550569831&use_mirror=freefr -O xampp.run
sudo apt -y install git
sudo chmod +x ./xampp.run
sudo echo -e "Y Y \n Y" | ./xampp.run
