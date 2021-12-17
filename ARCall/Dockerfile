FROM nginx:1.12-alpine
LABEL maintainer=laosu<wbsu2003@gmail.com>

# 环境变量  
ENV RTC_APPID rtcappid
ENV RTM_APPID rtmappid

WORKDIR /app

## 拷贝静态文件
COPY . /usr/share/nginx/html

COPY replace_appid.sh ./replace_appid.sh
RUN chmod +x replace_appid.sh

EXPOSE 80

CMD ["sh", "replace_appid.sh"]