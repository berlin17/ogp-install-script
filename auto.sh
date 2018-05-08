#!/bin/bash

# Update & Upgrade of system
sudo apt-get update && sudo apt-get upgrade

# Dependencies

sudo apt-get install lib32stdc++6 zip unzip nload htop locate libxml-parser-perl libpath-class-perl perl-modules screen rsync sudo e2fsprogs unzip subversion libarchive-extract-perl pure-ftpd libarchive-zip-perl libc6 libgcc1 git curl libc6-i386 libgcc1:i386 lib32gcc1 libhttp-daemon-perl


# LAMP
sudo apt-get install apache2 curl subversion php7.0 php-bcmath php7.0-gd php7.0-zip libapache2-mod-php7.0 php7.0-curl php7.0-mysql php7.0-xmlrpc php-pear phpmyadmin mariadb-server php7.0-mbstring php-gettext

# mysql_secure_installation
mysql_secure_installation

# MYSQL
sudo mysql -u root --execute="use mysql; update user set plugin='' where User='root'; flush privileges; \q"

# Agent
cd /root
wget -N "http://sourceforge.net/projects/ogpextras/files/Easy-Installers/ogp-agent-latest.deb/download" -O "ogp-agent-latest.deb"
sudo dpkg -i "ogp-agent-latest.deb"


# Panel
wget -N "http://sourceforge.net/projects/ogpextras/files/Easy-Installers/ogp-panel-latest.deb/download" -O "ogp-panel-latest.deb"
sudo dpkg -i "ogp-panel-latest.deb"




sudo cat /root/ogp_panel_mysql_info 
sudo cat /root/ogp_user_password 

echo "Good job! Installation finished!"
echo "You can install your panel here: http://your_server_ip/install.php"


