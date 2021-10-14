FROM node:16.5 as build-deps
MAINTAINER laosu<wbsu2003@gmail.com>

# environment
ENV VUE_APP_NETEASE_API_URL netease_vanau
ENV VUE_APP_ELECTRON_API_URL netease_vaeau
ENV VUE_APP_ELECTRON_API_URL_DEV netease_vaeaud
ENV VUE_APP_LASTFM_API_KEY netease_valak
ENV VUE_APP_LASTFM_API_SHARED_SECRET netease_valass
ENV DEV_SERVER_PORT netease_dsp

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn
COPY . ./
RUN yarn build

FROM nginx:1.12-alpine
COPY --from=build-deps /app/dist /usr/share/nginx/html
COPY --from=build-deps /app/replace_api_url.sh /  
CMD ["sh", "replace_api_url.sh"]
EXPOSE 80
