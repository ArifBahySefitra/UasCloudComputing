FROM php:8.1-apache

# Copy semua isi proyek ke folder apache
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Install ekstensi mysqli (untuk koneksi DB CI4)
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Ubah document root Apache ke folder public/
ENV APACHE_DOCUMENT_ROOT /var/www/html/public

# Update config Apache agar root-nya ke /public
RUN sed -ri -e 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!/var/www/html/public!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Aktifkan mod_rewrite (CI4 butuh ini)
RUN a2enmod rewrite

# Buka port 8080 agar bisa diakses
EXPOSE 8080

# Jalankan apache

