# 前端构建
FROM node:16.5 as build-front
LABEL maintainer=laosu<wbsu2003@gmail.com>

WORKDIR /app
COPY /tduck-front/package.json ./
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
COPY /tduck-front/. ./
RUN cnpm install
RUN cnpm run build

# 后端构建
FROM maven:3.6.0-jdk-11-slim AS build_end
COPY . ./
RUN mvn -f /tduck-platform/pom.xml clean package -DskipTests

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
COPY --from=build_end /tduck-platform/tduck-api/target/tduck-api.jar /usr/local/lib/tduck-api.jar

EXPOSE 80

ENTRYPOINT ["supervisord","-c","/etc/supervisord.conf"]
