# Gunakan official PHP image dengan Apache
FROM php:8.2-apache

# Salin semua file PHP ke direktori web
COPY . /var/www/html/

# Ganti port default Apache ke 7860
RUN sed -i 's/80/7860/g' /etc/apache2/ports.conf /etc/apache2/sites-enabled/000-default.conf

# Expose port 7860
EXPOSE 7860

# Jalankan Apache
CMD ["apache2-foreground"]
