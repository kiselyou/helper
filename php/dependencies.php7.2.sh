sudo apt-get install php7.2-curl
sudo apt-get install php7.2-intl
sudo apt-get install php7.2-xml
sudo apt-get install php7.2-redis
sudo apt-get install php7.2-mongodb
sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.2-fpm
sudo systemctl restart apache2