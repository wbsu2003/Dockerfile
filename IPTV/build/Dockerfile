# 指定基础镜像    
FROM php:7.4-fpm  
    
# 设置环境变量    
ENV DB_HOST=localhost  
ENV DB_PORT=3306  
ENV DB_USER=iptv  
ENV DB_PASSWORD=iptv  
ENV DB_NAME=iptv  
  
# 安装依赖项  
RUN apt-get update \  
    && apt-get install -y wget \  
    && apt-get install -y unzip  
    
# 将项目文件复制到容器中  
WORKDIR /app  
COPY . .  
    
# 安装 PHP 扩展和依赖项  
RUN docker-php-ext-install mysqli  
    
# 运行 PHP-FPM  
#CMD php-fpm --nodaemonize  
#CMD php-fpm -D   
RUN chmod +x check_file.sh    
CMD ["sh", "check_file.sh"]
