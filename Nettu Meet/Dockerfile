# 前端构建
FROM node:16.5 as build_front
LABEL maintainer=laosu<wbsu2003@gmail.com>

WORKDIR /app
COPY /frontend/. .
RUN npm install --registry=https://registry.npm.taobao.org
RUN npm run build

# 后端构建
FROM node:16.5
# Install DEB dependencies and others.
RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && apt-get clean \
    && apt-get update \
    && apt-get install -y net-tools build-essential valgrind supervisor nginx

WORKDIR /app

COPY /server/. .
RUN npm install --registry=https://registry.npm.taobao.org

# 环境变量
ENV NETTU_REDIS_HOST="host.docker.internal"
ENV NETTU_REDIS_PORT=6379
ENV MONGODB_CONNECTION_STRING=mongodb://root:rootpassword@host.docker.internal:27017
ENV MONGODB_NAME=nettu-meeting
ENV FRONTEND_URL="https://meet.nettubooking.com"

# 整体打包
## nginx
RUN rm -f /etc/nginx/sites-enabled/default 
RUN rm -f /etc/nginx/sites-available/default # 删默认站点
COPY  ./default.conf /etc/nginx/conf.d/default.conf

## supervisor
COPY  ./supervisord.conf /etc/supervisord.conf

## 前端静态文件	
COPY --from=build_front /app/build/ /usr/share/nginx/html
COPY  ./replace_api_url.sh ./replace_api_url.sh
RUN chmod +x replace_api_url.sh

EXPOSE 80

ENTRYPOINT ["supervisord","-c","/etc/supervisord.conf"]