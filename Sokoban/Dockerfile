FROM node:lts-alpine as build-base
LABEL maintainer=laosu<wbsu2003@gmail.com>

ARG PUBLIC_URL=/

WORKDIR /app
COPY ./package.json yarn.lock ./
RUN yarn config set registry https://registry.npm.taobao.org
RUN yarn install

COPY . .
RUN yarn build


FROM nginx:1.12-alpine
COPY --from=build-base /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
