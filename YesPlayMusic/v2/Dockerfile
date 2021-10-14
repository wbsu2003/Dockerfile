FROM node:16.5 as build-deps
LABEL maintainer=laosu<wbsu2003@gmail.com>

# environment
ENV VUE_APP_NETEASE_API_URL netease_vanau
ENV VUE_APP_ELECTRON_API_URL netease_vaeau
ENV VUE_APP_ELECTRON_API_URL_DEV netease_vaeaud
ENV VUE_APP_LASTFM_API_KEY netease_valak
ENV VUE_APP_LASTFM_API_SHARED_SECRET netease_valass
ENV DEV_SERVER_PORT netease_dsp

WORKDIR /app
COPY package.json yarn.lock ./
#RUN yarn
#RUN TMPDIR=/tmp yarn install
RUN yarn config set registry "https://registry.npm.taobao.org/" \
    && TMPDIR=/tmp yarn install
COPY . ./
RUN yarn build

FROM node:lts-alpine
RUN apk update \
    && apk add --no-cache supervisor openssh nginx
COPY --from=build-deps /app/dist /usr/share/nginx/html
COPY --from=build-deps /app/supervisord.conf /etc/supervisord.conf

# nginx
COPY --from=build-deps /app/default.conf /etc/nginx/conf.d/default.conf
COPY --from=build-deps /app/nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /usr/local/nginx/logs

# api server
WORKDIR /api
COPY --from=build-deps /app/netease_api/. /api
COPY --from=build-deps /app/replace_api_url.sh /api

RUN chmod +x replace_api_url.sh
RUN npm config set registry "https://registry.npm.taobao.org/" \
    && npm install --production

# CMD ["sh", "replace_api_url.sh"]
ENTRYPOINT ["supervisord","-c","/etc/supervisord.conf"]

EXPOSE 80