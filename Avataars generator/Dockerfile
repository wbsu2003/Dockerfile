FROM node:lts-alpine as build-base
LABEL maintainer=laosu<wbsu2003@gmail.com>

WORKDIR /app
COPY . .
COPY tsconfig.json tsconfig.prod.json
RUN npm install --registry=https://registry.npm.taobao.org
RUN npm run build

FROM nginx:1.12-alpine
COPY --from=build-base /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
