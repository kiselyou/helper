cd kafka/
git clone https://github.com/edenhill/librdkafka.git
cd librdkafka
phpize
./configure
sudo make
sudo make install
pecl install rdkafka

sudo sh -c 'echo "extension=rdkafka.so" >> /etc/php/7.2/cli/php.ini'