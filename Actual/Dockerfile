# 构建阶段
FROM node:18-bullseye as dev
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y openssl

WORKDIR /app
COPY . .

# 使用阿里云的源
RUN npm config set registry https://registry.npm.taobao.org/
RUN yarn install

# 构建应用程序
RUN yarn run build:browser

# 运行阶段
FROM nginx:1.12-alpine
LABEL maintainer=laosu<wbsu2003@gmail.com>

# 复制静态文件
COPY --from=dev /app/packages/desktop-client/build /usr/share/nginx/html

# 暴露 80 端口
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
