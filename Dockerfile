FROM mediawiki:latest

RUN apt update && apt install -y libpq-dev
    && docker-php-ext-install -j$(nproc) pdo_pgsql
    && docker-php-ext-install -j$(nproc) pgsql 
