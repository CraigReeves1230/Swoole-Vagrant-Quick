cd /
sudo apt-get update

sudo apt-get install -y build-essential zlib1g-dev libpcre3 libpcre3-dev unzip
sudo apt install -y libssl-dev

sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

sudo apt install -y php7.2-fpm php7.2-mbstring php7.2-xml php7.2-mysql php7.2-fpm php7.2-common php7.2-gd php7.2-json php7.2-cli php7.2-curl php-zmq php-apcu php-memcached \
php-solr php-mongodb php7.2-pgsql php7.2-opcache php-zmq php-stomp php-imagick php7.2-zip php-pear php7.2-dev php-mongodb

sudo pecl channel-update pecl.php.net
sudo su -c "yes | pecl install swoole"
sudo su -c "sudo echo "extension=swoole.so" > /etc/php/7.2/mods-available/swoole.ini"
sudo ln -s /etc/php/7.2/mods-available/swoole.ini /etc/php/7.2/cli/conf.d/20-swoole.ini

sudo service php7.2-fpm restart