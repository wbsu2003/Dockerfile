FROM php:7.0-apache
MAINTAINER laosu<wbsu2003@gmail.com>

# ENV THINKPHP_VERSION=5.1.39

RUN ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load \
    && sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf \
    && sed -i 's/\/var\/www\/html/\/var\/www\/html\/public/g' /etc/apache2/sites-enabled/000-default.conf

# 设置文件上传限制为 100M
RUN { \
        echo 'post_max_size = 128M;';\
        echo 'upload_max_filesize = 128M;';\
        echo 'max_execution_time = 300S;';\
    } > /usr/local/etc/php/conf.d/docker-php-upload.ini; 

# RUN curl -OL https://github.com/top-think/framework/archive/v$THINKPHP_VERSION.tar.gz \
#    && tar xvf v$THINKPHP_VERSION.tar.gz && mv framework-$THINKPHP_VERSION thinkphp

# 更换为阿里源
RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  apt-get clean
RUN  apt-get update
RUN  apt-get -y upgrade

# install some base extensions
RUN apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        exiftool \
        zlib1g-dev \
        libzip-dev \
  && docker-php-ext-install -j$(nproc) iconv \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install -j$(nproc) gd \
  && docker-php-ext-install exif \
  && docker-php-ext-configure exif --enable-exif \
#  && docker-php-ext-install pdo pdo_mysql \
#  && docker-php-ext-install zip \
#  && cd /usr/local/bin && ./docker-php-ext-install mysqli \
  && docker-php-ext-install mysqli pdo_mysql zip

#copy your files 
COPY . /lskypro/
# COPY .env.example /lskypro/.env.example
# RUN ls -al

# change working directory to root of apache webhost
WORKDIR /var/www/html/
VOLUME /var/www/html

EXPOSE 80

# now start the server
CMD \
  if [ "$(ls -A /var/www/html/public)" ]; then \
    echo "***** public目录存在并且有内容, 跳过 *****" ; \
  else \
    echo "***** public程序目录不存在或为空, 开始拷贝文件 *****" && \
	# cp -a /lskypro/* /var/www/html/ && \
    cp -R /lskypro/. /var/www/html/ && \
    # chmod -R 777 /var/www/html/runtime && \
    # chmod -R 777 /var/www/html/public; \
    chmod -R 777 /var/www/html; \
  fi; \
  apachectl -D FOREGROUND \
