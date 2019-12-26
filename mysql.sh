#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install mysql-server
sudo systemctl status mysql.service

sudo apt-get install phpmyadmin php-mbstring php-gettext
sudo phpenmod mcrypt
sudo phpenmod mbstring
sudo systemctl restart apache2