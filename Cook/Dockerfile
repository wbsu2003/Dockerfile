FROM node:16.5 as build-deps    
MAINTAINER laosu<wbsu2003@gmail.com>    
    
WORKDIR /cook    
COPY . ./  
RUN npm i -g pnpm  
RUN pnpm install  
RUN pnpm build  
  
FROM nginx:1.12-alpine    
COPY --from=build-deps /cook/dist /usr/share/nginx/html    
    
EXPOSE 80    
CMD ["nginx", "-g", "daemon off;"]
