#!/bin/sh -e
sudo wget -O xampp.run -q --show-progress "https://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/7.3.2/xampp-linux-x64-7.3.2-0-installer.run?r=&ts=1550569831&use_mirror=freefr"
sudo apt -y install git
sudo chmod +x ./xampp.run
sudo echo -e "Y Y \n Y" | sudo ./xampp.run --mode text
