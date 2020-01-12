#!/usr/bin/env bash

sudo apt update
sudo apt install -y curl wget gnupg2 ca-certificates lsb-release apt-transport-https
sudo apt-add-repository ppa:ondrej/php
sudo apt update

sudo apt install -y php7.3 php7.3-cli php7.3-common
sudo apt install -y php7.2 php7.2-cli php7.2-common
sudo apt install -y php7.1 php7.1-cli php7.1-common