FROM node:16.5 AS build  
  
# 改阿里源  
RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list  
RUN cat /etc/apt/sources.list  
RUN rm -Rf /var/lib/apt/lists/*  
  
# 安装 Python 和编译工具  
RUN apt-get update && apt-get install -y \  
    python \  
    make \  
    g++  
  
# 配置 Node.js 环境变量  
ENV PATH="/usr/local/bin:${PATH}"  
  
WORKDIR /app  
COPY package*.json ./  
RUN npm install --registry=https://registry.npm.taobao.org --disturl=https://electronjs.org/headers  
COPY . .  
RUN npm run build  
  
# 第二阶段：生成生产环境镜像  
FROM nginx:1.12-alpine  
LABEL maintainer=laosu<wbsu2003@gmail.com>  
  
COPY --from=build /app/dist /usr/share/nginx/html  
  
EXPOSE 80  
CMD ["nginx", "-g", "daemon off;"]
