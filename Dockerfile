FROM docker.io/composer/composer:2.8.9

# Install PCRE, PHPize dependencies, and pecl extensions
RUN apk add --no-cache pcre-dev $PHPIZE_DEPS \
    && pecl install mongodb \
    && pecl install redis \
    && docker-php-ext-enable redis mongodb