#!/bin/bash

# 将容器内的 api 目录复制到 /app 目录中
echo "------begin------"
cp -r /api ./app/
cp -r /push ./app/

# 设置国内源
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# 初始化 laravel
cd /app/api && composer install && cp -n .env.example .env && php artisan key:generate && php artisan migrate --seed

mkdir -p /app/api/storage
chmod -R 0777 /app/api/storage

mkdir -p /app/api/bootstrap/cache/
chmod -R 0777 /app/api/bootstrap/cache/
echo "------end------"
