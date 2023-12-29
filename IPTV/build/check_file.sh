#!/bin/bash          
        
if [ "$(ls -A /var/www/html)" ]; then     
    echo "***** Web 目录存在并且有内容, 跳过 *****"    
    cd /var/www/html/ ;     
  else     
    echo "***** Web 目录不存在或为空 *****"     
    cp -r * /var/www/html  
    rm -rf /var/www/html/Dockerfile  
    rm -rf /var/www/html/check_file.sh  
    chmod -R 777 /var/www/html  
  fi    
      
php-fpm
