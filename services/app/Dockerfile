FROM php:7.2-fpm

WORKDIR /usr/src/app/

RUN apt-get update && apt-get install -y \
	libpq-dev \
    libxml2-dev \
    zlib1g-dev \
    && apt-get clean -y
RUN	docker-php-ext-install \
    opcache \
    pdo \
    dom \
    mbstring \
    session \
    tokenizer \
    zip

RUN curl -sS https://getcomposer.org/installer |\
    php -- --install-dir=/usr/local/bin --filename=composer

COPY ./composer.json ./composer.lock ./

RUN composer install \
        --no-interaction \
    && composer clear-cache