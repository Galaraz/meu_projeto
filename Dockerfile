# Use a imagem oficial do PHP 8.0
FROM php:8.0-apache

# Habilita o módulo SQLite
RUN docker-php-ext-install pdo pdo_sqlite

# Copia o código do aplicativo para o diretório de trabalho do Apache
COPY . /var/www/html

# Configuração do Apache
RUN chown -R www-data:www-data /var/www/html/ \
    && a2enmod rewrite

# Exponha a porta 80 para acesso externo
EXPOSE 80
