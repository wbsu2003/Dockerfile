FROM node:16.5
LABEL maintainer=laosu<wbsu2003@gmail.com>

# 前端
WORKDIR /app/client
COPY client/package*.json ./

RUN npm install -g npm create-react-app --registry=https://registry.npm.taobao.org \
    && npm install --save react react-dom react-app-rewired

# 后端
WORKDIR /app
COPY package*.json ./

# 安装 Supervisor 和其他依赖 
RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && apt-get clean \
    && apt-get update \
    && apt-get -y install supervisor xsel
RUN mkdir -p /var/log/supervisor

RUN npm install -g npm serve --registry=https://registry.npm.taobao.org \
    && npm install --save ts-node-dev

COPY . .

# supervisor 配置 
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 2567 3000

ENTRYPOINT ["supervisord","-c","/etc/supervisord.conf"]
