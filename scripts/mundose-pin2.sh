#!/bin/bash

echo "Apache2 install"

sudo apt update
sudo apt install -y apache2 git
sudo systemctl enable apache2

echo "Cloning site"

sudo rm -rf /var/www/html/
sudo git clone https://github.com/danterpaniagua/example-site.git /var/www/html/
sudo chown -R www-data:www-data /var/www/html/

# Archivos con permiso 664
sudo find /var/www -type f -exec chmod 664 {} \;
# Carpetas con permiso 775
sudo find /var/www -type d -exec chmod 775 {} \;
sudo find /var/www -type d -exec chmod g+s {} \;

sudo systemctl restart apache2