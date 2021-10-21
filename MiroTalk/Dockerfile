FROM node:14-alpine 
# https://hub.docker.com/_/node

WORKDIR /usr/src/app

# 尝试使用 https 而不是 http
RUN sed -i -e 's/http:/https:/' /etc/apk/repositories

# 使用阿里镜像 https://mirrors.aliyun.com
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk add --no-cache \
bash \
vim

COPY package*.json ./
COPY .env.template ./.env

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
