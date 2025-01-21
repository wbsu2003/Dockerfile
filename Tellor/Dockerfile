# 使用官方 PHP 镜像
FROM php:7.4-apache

# 设置工作目录
WORKDIR /var/www/html

# 复制项目文件到容器中
COPY . .

# 安装所需的 PHP 扩展
RUN docker-php-ext-install mysqli

# 设置数据库连接的环境变量
ENV DB_DATABASE=tellordb
ENV DB_USER=telloruser
ENV DB_PASSWORD=tellorpasswd
ENV DB_HOST=mysql-container

# 开放端口 80
EXPOSE 80
