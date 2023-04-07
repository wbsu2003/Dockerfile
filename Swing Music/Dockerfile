#前端构建
FROM node:latest as builder
  
# 改阿里源
RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list
RUN cat /etc/apt/sources.list
RUN rm -Rf /var/lib/apt/lists/*
  
# 安装 Git
RUN apt-get update && \
    apt-get install -y git
  
# 设置yarn镜像为国内镜像
RUN yarn config set registry https://registry.npm.taobao.org --global && \
    yarn config set disturl https://npm.taobao.org/dist --global

# 下载客户端代码
RUN git clone https://github.com/geoffrey45/swing-client.git /app

# 删除 yarn.lock，否则改源没有用
RUN rm -Rf /app/yarn.lock

# 安装依赖
WORKDIR /app
RUN yarn install && \
    yarn build

# 后端构建
FROM python:3.11-slim-buster
MAINTAINER laosu<wbsu2003@gmail.com>
    
# 改阿里源
RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list
RUN cat /etc/apt/sources.list
RUN rm -Rf /var/lib/apt/lists/*

# 安装 Git 和 Poetry
RUN apt-get update && \
    apt-get install -y git curl

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -    
ENV PATH /root/.local/bin:$PATH
    
# 下载服务端代码
RUN git clone https://github.com/geoffrey45/swingmusic.git /app

# 复制前端
COPY --from=builder /app/dist/. /app/client/.

# 安装依赖
WORKDIR /app
RUN pip install --upgrade pip && \
    poetry install

EXPOSE 1970
ENV XDG_CONFIG_HOME=/data

# 替换 localhost 为 0.0.0.0，否则容器外无法访问
RUN sed -i "s@localhost@0.0.0.0@g" /app/app/settings.py

# 启动应用
CMD ["poetry", "run", "python", "manage.py"]