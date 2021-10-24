FROM nginx:1.12-alpine
LABEL maintainer=laosu<wbsu2003@gmail.com>

COPY ./autopiano_build_demo/. /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
