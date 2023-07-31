# 源码构建
FROM maven:3.6.0-jdk-11-slim AS builder
COPY . ./
RUN mvn clean install

# 镜像打包
FROM openjdk:8-jdk-alpine  
LABEL maintainer=laosu<wbsu2003@gmail.com> 
  
RUN mkdir -p /spider-flow  
WORKDIR /spider-flow  
EXPOSE 8088  
COPY --from=builder ./spider-flow-web/target/spider-flow.jar ./  
CMD sleep 30;java -Djava.security.egd=file:/dev/./urandom -jar spider-flow.jar
