FROM python:3.6-slim
MAINTAINER laosu<wbsu2003@gmail.com>

WORKDIR /baidupy
COPY . /baidupy/

# Environment
ENV TERM=xterm
RUN pip install bypy 

# Application
EXPOSE 80
ENV NAME Python_client_for_Baidu_Yun

CMD bypy info
