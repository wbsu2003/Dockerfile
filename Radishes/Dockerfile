FROM node:16.16 as build-deps
MAINTAINER laosu<wbsu2003@gmail.com>

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . ./
RUN yarn build:web

FROM nginx:1.20.2-alpine
COPY --from=build-deps /app/dist /usr/share/nginx/html
COPY --from=build-deps /app/nginx.conf /etc/nginx/conf.d/default.conf

RUN apk add --no-cache npm
RUN npm install -g NeteaseCloudMusicApi
  
CMD nginx && npx NeteaseCloudMusicApi
