#!/bin/sh
yum install -y nginx #install nginx
cd /tmp # change dir
wget -q http://rpms.remirepo.net/enterprise/remi-release-7.rpm #get remi repo php
rpm -Uvh remi-release-7.rpm #install remi repo
yum -y install yum-utils #install yum utils
yum-config-manager --enable remi-php72 #change remi repo to php72
yum -y install php-fpm php-common
yum -y install php-opcache php-pecl-apcu php-cli php-pear php-pdo php-mysqlnd php-pgsql php-pecl-mongodb php-pecl-redis php-pecl-memcache php-pecl-memcached php-gd php-mbstring php-mcrypt php-xml #install php extention
systemctl start php-fpm #start php-fpm
systemctl restart php-fpm #restart php-fpm
systemctl enable php-fpm #enable autostart php-fpm
rm -rf /tmp/remi-release-7.rpm #delete remi rpm file
#END
