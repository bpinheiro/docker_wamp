# Dockerfile
FROM php:8.0-apache

# Install zip lib
RUN apt-get update && \
    apt-get install -y libzip-dev unzip p7zip && \
    docker-php-ext-install zip

# Install mysql lib
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql
RUN a2enmod rewrite

