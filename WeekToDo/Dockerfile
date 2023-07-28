# 构建阶段
FROM node:16-alpine AS builder

RUN apk update && apk add --no-cache git python3 make g++

WORKDIR /app

COPY . .

# 使用阿里云的源
RUN yarn config set registry https://registry.npm.taobao.org/

# 设置淘宝的镜像，加速 node-sass 模块的下载和安装
RUN yarn config set sass_binary_site http://cdn.npm.taobao.org/dist/node-sass && yarn cache clean && yarn install --network=host

# 构建应用程序
RUN yarn run build

# 运行阶段
FROM nginx:1.12-alpine
LABEL maintainer=laosu<wbsu2003@gmail.com>

# 复制静态文件
COPY --from=builder /app/dist /usr/share/nginx/html

# 暴露 80 端口
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
