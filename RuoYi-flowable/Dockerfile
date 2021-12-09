# 前端构建
#FROM node:16.5 as build-front
FROM node:12 as build-front
LABEL maintainer=laosu<wbsu2003@gmail.com>

WORKDIR /app
COPY /ruoyi-ui/package.json ./
RUN npm install --registry=https://registry.npm.taobao.org
COPY /ruoyi-ui/. ./
RUN npm run build:prod

# 后端构建
FROM maven:3.6.0-jdk-11-slim AS build_end
#FROM maven:3.6.0-jdk-8-slim AS build_end
#FROM maven:3.6.3-openjdk-11-slim AS build_end
COPY . ./
RUN mvn clean package -Dmaven.test.skip=true

# 整体打包
FROM openjdk:11-jre-slim
RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && apt-get clean \
    && apt-get update \
    && apt-get install -y supervisor nginx
	
## nginx
COPY --from=build_end ./nginx.conf /etc/nginx/nginx.conf

## supervisor
COPY --from=build_end ./supervisord.conf /etc/supervisord.conf

## 前端静态文件	
COPY --from=build-front /app/dist/ /usr/share/nginx/html

## 后端jar包
COPY --from=build_end /ruoyi-admin/target/ruoyi-admin.jar /usr/local/lib/ruoyi-admin.jar

EXPOSE 80

ENTRYPOINT ["supervisord","-c","/etc/supervisord.conf"]
