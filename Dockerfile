FROM php:8.1-apache

# Copy project ke container
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Install dependensi jika ada composer
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Set document root ke folder public CodeIgniter
ENV APACHE_DOCUMENT_ROOT /var/www/html/public

# Atur Apache untuk pakai public sebagai root
RUN sed -ri -e 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!/var/www/html/public!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Aktifkan mod_rewrite
RUN a2enmod rewrite

# Port yang digunakan Railway
EXPOSE 8080

CMD ["apache2-foreground"]
