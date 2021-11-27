FROM node:16.5
LABEL maintainer=laosu<wbsu2003@gmail.com>

ENV BACKEND_URL="wss://sky-office.herokuapp.com"

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
    && apt-get clean \
    && apt-get update \
    && apt-get -y install supervisor

# supervisor 配置
COPY supervisord.conf /etc/supervisord.conf

# 脚本文件
COPY replace_api_url.sh ./client/replace_api_url.sh
RUN chmod +x /app/client/replace_api_url.sh

EXPOSE 2567 3000

ENTRYPOINT ["supervisord","-c","/etc/supervisord.conf"]
