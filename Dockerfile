FROM php:7.4-fpm-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer

# Expose webroot
VOLUME /var/www/fuelphp
WORKDIR /var/www/fuelphp

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN apk update && apk add \
	build-base \
	vim \
	sudo \
	nginx \
	redis \
	git

RUN docker-php-ext-install pdo_mysql

RUN addgroup -g 1000 -S www && \
	adduser -u 1000 -S www -G www	
	
USER root

COPY . /var/www/

RUN composer update
RUN composer install --prefer-dist

EXPOSE 9000