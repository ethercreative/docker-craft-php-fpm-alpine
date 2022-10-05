FROM php:8.1-fpm-alpine

# Variables
ARG WITH_XML
ARG WITH_XDEBUG

# Do a thing
RUN set -ex

# Add required deps
RUN apk --no-cache add \
    g++ \
    make \
    libtool \
    autoconf \
    libzip-dev \
    icu-dev \
    icu-data-full \
    freetype-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    libgomp \
    imagemagick \
    imagemagick-dev \
    git \
    jpegoptim \
    optipng \
    unzip

# Configure GD
RUN docker-php-ext-configure gd \
    --with-freetype \
    --with-jpeg

# Install PHP extensions
RUN docker-php-ext-install \
    gd \
    opcache \
    pdo \
    sockets \
    intl \
    zip \
    bcmath \
    pdo_mysql

# Install Imagick
RUN pecl install imagick \
    && docker-php-ext-enable imagick

# XML
RUN if [ $WITH_XML = "true" ] ; then \
    apk --no-cache add libxslt-dev; \
    docker-php-ext-install \
    xsl \
    soap; \
    fi ;

# xdebug
RUN if [ $WITH_XDEBUG = "true" ] ; then \
    pecl install xdebug-2.7.0RC2; \
    docker-php-ext-enable xdebug; \
    echo "error_reporting = E_ALL" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini; \
    echo "display_startup_errors = On" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini; \
    echo "display_errors = On" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini; \
    echo "xdebug.remote_enable=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini; \
    fi ;

# Clean Up
RUN apk del autoconf g++ libtool make \
    && rm -rf /tmp/* /var/cache/apk/*

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
