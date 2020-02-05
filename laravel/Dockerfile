#PHP_FPM SETUP

FROM php:7.4.1-fpm-alpine3.11
RUN apk add bash mysql-client nodejs npm
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

RUN rm -rf /var/www/html

COPY . /var/www

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN ln -s public html

EXPOSE 9000
ENTRYPOINT [ "php-fpm" ]
