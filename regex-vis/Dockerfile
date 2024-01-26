FROM node:16.16 as build-deps  
  
# 设置工作目录  
WORKDIR /app
COPY . ./  
  
# 更新根证书  
RUN apt-get update && apt-get install -y ca-certificates  
  
# 设置镜像源为淘宝 NPM 镜像
RUN npm config set registry https://registry.npmmirror.com
  
# 安装依赖
RUN npm i -g pnpm  
RUN pnpm install  
  
# 构建应用  
RUN pnpm run build  
    
FROM nginx:1.21-alpine  
MAINTAINER laosu<wbsu2003@gmail.com>  
COPY --from=build-deps /app/build /usr/share/nginx/html  
  
EXPOSE 80  
CMD ["nginx", "-g", "daemon off;"]
