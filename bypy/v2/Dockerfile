FROM python:3.6-slim
MAINTAINER laosu<wbsu2003@gmail.com>

WORKDIR /baidupy

# Application
RUN apt-get update -y && \
    apt-get install -y supervisor
    
RUN	pip install bypy

# supervisord
COPY supervisord.conf /etc/supervisord.conf

# Environment
ENV TERM=xterm
ENV NAME=Python_client_for_Baidu_Yun

#定义时区参数（非必须）
ENV TZ=Asia/Shanghai
#设置时区（非必须）
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone
#设置编码（非必须）
ENV LANG C.UTF-8

ENTRYPOINT ["supervisord","-c","/etc/supervisord.conf"]
