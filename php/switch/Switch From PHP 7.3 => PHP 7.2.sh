#!/usr/bin/env bash

sudo a2dismod php7.3
sudo a2enmod php7.2
sudo service apache2 restart

sudo update-alternatives --set php /usr/bin/php7.2
sudo update-alternatives --set phar /usr/bin/phar7.2
sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.2