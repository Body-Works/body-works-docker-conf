FROM php:7.4-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y

# Global webserver config
COPY 100-custom-php.ini /usr/local/etc/php/conf.d/100-custom-php.ini
RUN a2enmod rewrite
RUN a2enmod ssl

# Virtual hosts

# body-works.pl
RUN mkdir -p /etc/apache2/ssl/
RUN openssl req -new -newkey rsa:4096 -days 3650 -nodes -x509 -subj \
    "/C=PL/ST=Mazovia/L=Warsaw/O=Realhe.ro/CN=*.body-works.pl" \
    -keyout /etc/apache2/ssl/bodyworks.key -out /etc/apache2/ssl/bodyworks.crt

# COPY ./bodyworks.key /etc/apache2/ssl/bodyworks.key
# COPY ./bodyworks.crt /etc/apache2/ssl/bodyworks.crt

COPY body-works.pl.conf /etc/apache2/sites-available/body-works.pl.conf
RUN a2ensite body-works.pl.conf

COPY shop.body-works.pl.conf /etc/apache2/sites-available/shop.body-works.pl.conf
RUN a2ensite shop.body-works.pl.conf
