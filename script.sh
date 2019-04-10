#!/bin/sh -e

#Dl xampp and install 
sudo wget -O xampp.run -q --show-progress "https://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/7.3.2/xampp-linux-x64-7.3.2-0-installer.run?r=&ts=1550569831&use_mirror=freefr"
sudo apt -y install git net-tools
sudo chmod +x ./xampp.run
sudo echo -e "Y Y \n Y" | sudo ./xampp.run --mode text
sudo chmod 755 -R /opt/lampp/htdocs
sudo ln -s /opt/lampp/htdocs $HOME/Bureau

#Create local.rc && make executable
sudo touch /etc/rc.local
sudo chmod +x /etc/rc.local
sudo sh -c "echo '#!/bin/sh -e' >> /etc/rc.local"
sudo sh -c "echo '/opt/lampp/lampp start' >> /etc/rc.local"
sudo sh -c "echo 'exit 0' >> /etc/rc.local"

#Config global git
read -p "Entrer les global git ? (O/n) : " global
if [ global ]
then
  read -p "Email : " global.email
  git config --global user.email "$global.email"
  read -p "Name : " global.name
  git config --global user.name "$global.name"
fi

# TODO : prompt user global
