FROM php:7.2-fpm

WORKDIR /code

# 安裝 composer
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN \
    apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*
