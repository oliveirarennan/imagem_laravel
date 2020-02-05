#!/bin/bash
composer install --no-cache
php artisan key:generate
php artisan migrate
php-fpm
