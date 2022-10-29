FROM openjdk:8-jdk as build  
LABEL maintainer=laosu<wbsu2003@gmail.com>  

# 设置国内源 
RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \  
    && apt-get clean \  
    && apt-get update \  
    && apt-get install -y wget      

# 下载 2.6.0 的代码和配置文件
RUN wget https://ghproxy.com/github.com/Athou/commafeed/releases/download/2.6.0/commafeed.jar  
RUN wget https://ghproxy.com/raw.githubusercontent.com/Athou/commafeed/2.6.0/config.yml.example -O config.yml  

EXPOSE 8082 
VOLUME /config  

# 复制设置文件到 config 目录  
CMD \
  if [ -f "/config/config.yml" ]; then \
    echo "***** config 目录已存在设置文件, 跳过 *****" ; \
  else \
    echo "***** config 目录不存在或为空, 复制设置文件 *****" && \
    cp config.yml ./config/config.yml ; \
  fi; \
  java -Djava.net.preferIPv4Stack=true -jar commafeed.jar server /config/config.yml
