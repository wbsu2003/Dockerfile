FROM node:16.5
LABEL maintainer=laosu<wbsu2003@gmail.com>

WORKDIR /app
COPY . .

# 前端
WORKDIR /app/client
RUN npm install -g serve --registry=https://registry.npm.taobao.org

# 后端
WORKDIR /app
RUN npm install --registry=https://registry.npm.taobao.org

# 安装 Supervisor 和其他依赖 
RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
#RUN sed -i s@/deb.debian.org/@/mirrors.163.com/@g /etc/apt/sources.list \
    && apt-get clean \
    && apt-get update \
    && apt-get -y install supervisor
RUN mkdir -p /var/log/supervisor

# supervisor 配置
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 3000 9001

ENTRYPOINT ["supervisord","-c","/etc/supervisord.conf"]
