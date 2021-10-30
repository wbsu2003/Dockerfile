FROM node:lts-alpine as build-base
LABEL maintainer=laosu<wbsu2003@gmail.com>

WORKDIR /app
COPY ./package.json ./
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
COPY . .
RUN cnpm install
RUN cnpm run build

FROM nginx:1.12-alpine
COPY --from=build-base /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
