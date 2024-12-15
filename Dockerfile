FROM php:7.4-apache

# Copy the PHP files into the container
COPY src/ /var/www/html/

# Expose port 80
EXPOSE 80
