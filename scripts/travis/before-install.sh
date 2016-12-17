#!/usr/bin/env bash

# update composer
composer self-update

# remove xdebug to make php execute faster
phpenv config-rm xdebug.ini

# Install Drush and drupalorg_drush module
composer global require drush/drush:^8.1 drupal/coder
phpenv rehash

# Set MySQL Options
mysql -e 'SET GLOBAL wait_timeout = 5400;'
mysql -e "SHOW VARIABLES LIKE 'wait_timeout'"

# PHP conf tweaks
echo 'max_execution_time = 120' >> drupal.php.ini;
echo 'sendmail_path = /bin/true' >> drupal.php.ini;
phpenv config-add drupal.php.ini
phpenv rehash
