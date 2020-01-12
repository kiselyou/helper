#!/usr/bin/env bash

PHPVersion() {
  fullVersion=$(php -v|grep --only-matching --perl-regexp "^PHP (7\.\\d+\.\\d+)")
  echo "${fullVersion:4}";
}
currentVersion=$(PHPVersion)

to="7.$1";
from=${currentVersion::0-3}

if [ "${from}" = "${to}" ]
then
  echo "The desired version is already installed: ${currentVersion}"; exit 1;
fi

echo "Version before switch: ${currentVersion}"

sudo a2dismod php"${from}"
sudo a2enmod php"${to}"
sudo service apache2 restart

sudo update-alternatives --set php /usr/bin/php"${to}"
sudo update-alternatives --set phar /usr/bin/phar"${to}"
sudo update-alternatives --set phar.phar /usr/bin/phar.phar"${to}"

echo "Version after switch: $(PHPVersion)"