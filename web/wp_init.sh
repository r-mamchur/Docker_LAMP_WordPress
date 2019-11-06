#!/bin/bash

if [ ! -f /var/www/html/wp-config.php ]; then
  wget https://wordpress.org/latest.tar.gz 
  tar -xzf latest.tar.gz -C /var/  
  mv -f /var/wordpress/* /var/www/html
  cp /tmp/wp-config.php /var/www/html
  chown -R apache:apache /var/www/html
  chmod 775 /var/www/html -R
fi

/usr/sbin/httpd -D FOREGROUND

