FROM node:16.5 as build-deps
MAINTAINER laosu<wbsu2003@gmail.com>

WORKDIR /signal
COPY package.json tsconfig.json ./

RUN yarn
COPY . ./
RUN yarn build

FROM nginx:1.12-alpine
COPY --from=build-deps /signal/dist /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
