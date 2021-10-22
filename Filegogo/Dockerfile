# 前端构建
FROM node:lts-alpine as builder-node

WORKDIR /app
COPY webapp .

RUN npm install --registry=https://registry.npm.taobao.org \
    && npm run build

# 服务端构建
FROM golang:1.16-buster AS builder

WORKDIR /src
COPY . .
COPY --from=builder-node /app/build /src/server/build

RUN make server

# Bin
FROM scratch AS bin
COPY --from=builder /src/filegogo-server /usr/bin/filegogo-server
COPY conf/filegogo-server.toml /etc/filegogo/

EXPOSE 8080/tcp

ENTRYPOINT ["/usr/bin/filegogo-server"]
