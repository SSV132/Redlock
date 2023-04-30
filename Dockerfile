FROM php:8.1-apache

COPY . /var/www/html/

COPY ./redlock-db.sql /docker-entrypoint-initdb.d/
RUN apt update -y && apt upgrade -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

WORKDIR /var/www/html

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 750 /var/www/html \
    && chmod -R g+s /var/www/html

EXPOSE 80
ENV APACHE_PORT 7077

FROM jenkins/jenkins:latest
