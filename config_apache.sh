#!/bin/bash
dpkg --configure -a
apt-get -y update

# install Apache2
apt-get -y install apache2
apt-get -y install mysql-server
apt-get -y install php libapache2-mod-php php-mysql
# write some HTML
echo \<center\>\<h1\>This is sample NWaaP Portal\</h1\>\<br/\>\</center\> > /var/www/html/demo.html

# restart Apache
apachectl restart
