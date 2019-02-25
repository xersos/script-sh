#!/bin/sh -e
sudo wget -O xampp.run -q --show-progress "https://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/7.3.2/xampp-linux-x64-7.3.2-0-installer.run?r=&ts=1550569831&use_mirror=freefr"
sudo apt -y install git net-tools
sudo chmod +x ./xampp.run
sudo echo -e "Y Y \n Y" | sudo ./xampp.run --mode text
sudo ln -s $HOME/Bureau /opt/lampp/htdocs
sudo touch /etc/rc.local
sudo chmod +x /etc/rc.local
sudo sh -c "echo '#!/bin/sh -e' >> /etc/rc.local"
sudo sh -c "echo '/opt/lampp/lampp start' >> /etc/rc.local"
sudo sh -c "echo 'exit 0' >> /etc/rc.local"
# TODO : prompt user global
