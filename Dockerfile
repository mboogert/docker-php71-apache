FROM php:7.1-apache
MAINTAINER Marcel Boogert <marcel@mtdb.nl>

RUN \
    apt-get update && \
    apt-get install libz-dev -y && \
    pecl install zlib zip
