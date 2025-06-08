# 使用 Node.js 官方镜像作为基础镜像  
FROM node:18 AS dev  
  
# 设置工作目录  
WORKDIR /app  
  
# 复制 package.json 和 package-lock.json  
COPY package.json package-lock.json ./  
  
# 安装依赖  
RUN npm install  
  
# 复制其余项目文件  
COPY . .  
  
# 暴露开发服务器的端口（通常是 3000）  
EXPOSE 3000  
  
# 启动开发服务器  
CMD ["npm", "run", "dev"]
