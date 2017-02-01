FROM php:7.1-apache
MAINTAINER Marcel Boogert <marcel@mtdb.nl>

RUN \
    apt-get update && \
    apt-get install libz-dev -y && \
    apt-get install libjpeg-dev -y && \
    apt-get install libpng-dev -y && \
    apt-get install libfreetype6-dev -y && \
    apt-get install libmcrypt-dev -y && \
    apt-get clean

RUN docker-php-ext-install \
    gd \
    zip \
    pdo \
    pdo_mysql \
    mcrypt \
    bcmath
