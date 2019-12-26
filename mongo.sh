#!/usr/bin/env bash

# Import the public key used by the package management system
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Create a list file for MongoDB.
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
# Reload local package database
sudo apt-get update
# Install the latest stable version of MongoDB
sudo apt-get install -y mongodb-org
sudo service mongod start
sudo systemctl enable mongod.service

# to install a specific release of MongoDB
# sudo apt-get install -y mongodb-org=3.6.2 mongodb-org-server=3.6.2 mongodb-org-shell=3.6.2 mongodb-org-mongos=3.6.2 mongodb-org-tools=3.6.2

# sudo service mongod start
# sudo service mongod stop
# sudo service mongod restart
