#!/usr/bin/env bash

sudo apt-get update
# git
sudo apt-get install git
# composer
sudo apt install composer
# php 7.0
sudo apt-get install python-software-properties software-properties-common
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt-get install php7.0 php7.0-fpm php7.0-mysql -y
sudo apt install php7.0-mcrypt
sudo apt install php7.0-mbstring
sudo apt-get install php-mbstring
sudo apt-get install php-xml
sudo apt-get install php-mysql
sudo a2enmod rewrite
sudo service apache2 restart
# node install
sudo apt-get install nodejs
sudo apt-get install npm
# node update version
sudo npm cache clean -f
sudo npm install -g n
# sudo n stable
# sudo ln -sf /usr/local/n/versions/node/<VERSION>/bin/node /usr/bin/nodejs
sudo n 9.4.0
sudo ln -sf /usr/local/n/versions/node/9.4.0/bin/node /usr/bin/nodejs

#After installation of node.js and npm on your system, use following commands to install bower.
sudo npm install -g bower

# get users
awk -F':' '{ print $1}' /etc/passwd
