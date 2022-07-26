FROM node:18-buster-slim as build-deps

WORKDIR /src

COPY . .

RUN npm install
RUN npm run build

FROM nginx:1.12-alpine
LABEL maintainer=laosu<wbsu2003@gmail.com>

COPY --from=build-deps /src/dist /usr/share/nginx/html

COPY ./replace_api_url.sh ./replace_api_url.sh

RUN chmod +x replace_api_url.sh

EXPOSE 80
CMD ["./replace_api_url.sh"]
