# syntax=docker/dockerfile:1
FROM php:8.1.10-fpm

RUN apt-get update \
    && php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer \
    && docker-php-ext-install pdo_mysql

EXPOSE 9000