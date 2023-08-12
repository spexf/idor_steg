#!/bin/sh

read -p "Install phpmyadmin to? : (y/n) " approval
echo "Installing PHP Requirements"

sudo apt install apache2
sudo apt install php libapache2-mod-php php-mbstring php-cli php-bcmath php-json php-xml php-zip php-pdo php-common php-tokenizer php-mysql -y
sudo apt install mariadb-server -y

mkdir tempdir
mkdir tempdir/composer
cd tempdir/composer

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

if [ "$approval" = "y" ]
then
	sudo apt install phpmyadmin -y
else
	echo "Not Installing PHPMyAdmin"
fi

echo "Creating User For Laravel . . ."
useradd -m laravel --shell /bin/bash
echo "Input Password For Laravel User"
passwd laravel
mkdir /home/laravel/project
composer global require laravel/installer
sudo composer --version
echo "Installation Complete !"
