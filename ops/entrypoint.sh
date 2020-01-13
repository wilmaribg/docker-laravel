#!/bin/bash

echo "Ready to develop..."


# start mover este codigo codigo al docker file
# apt install vim -y
# fin

# cp -n /ops/config/php.init /etc/php/7.3/apache2/php.init
# /etc/init.d/apache2 restart
cd /ops/html

# composer install
php artisan serve --host 0.0.0.0
