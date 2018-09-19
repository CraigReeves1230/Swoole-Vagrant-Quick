sudo apt-get update

sudo apt-get install build-essential zlib1g-dev libpcre3 libpcre3-dev unzip
sudo apt install libssl-dev

sudo apt install php-pear
sudo apt install php7.0-dev

sudo pecl channel-update pecl.php.net
sudo su -c "yes | pecl install swoole"
sudo su -c "sudo echo "extension=swoole.so" > /etc/php/7.0/mods-available/swoole.ini"
sudo ln -s /etc/php/7.0/mods-available/swoole.ini /etc/php/7.0/cli/conf.d/20-swoole.ini





