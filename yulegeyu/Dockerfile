FROM node:16.16 as build-deps
MAINTAINER laosu<wbsu2003@gmail.com>
    
WORKDIR /app
COPY . ./
RUN npm install
RUN npm run build
  
FROM nginx:1.12-alpine
COPY --from=build-deps /app/dist /usr/share/nginx/html
    
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
