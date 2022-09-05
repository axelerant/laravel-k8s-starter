ARG PHP_EXTENSIONS="apcu bcmath pdo_mysql redis imagick gd"
FROM thecodingmachine/php:8.1-v4-fpm as php_base
ENV TEMPLATE_PHP_INI=production
WORKDIR /var/www/html
COPY --chown=docker:docker . .
COPY --chown=docker:docker .env.example .env
RUN composer install --optimize-autoloader --no-dev
RUN php artisan key:generate
