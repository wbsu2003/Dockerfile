#!/bin/bash

if [ ! -f "/usr/share/nginx/html/settings.json" ];then
	 echo "文件不存在"
	 cp -r ./www/. /usr/share/nginx/html
 else
	 echo "文件存在"
fi

nginx -g "daemon off;"
