# 使用 Node.js 作为基础镜像  
FROM node:18  
  
# 设置工作目录  
WORKDIR /usr/src/app  
  
# 复制 package.json 和 package-lock.json  
COPY package*.json ./  
  
# 安装依赖
RUN npm install  
# serve 不是项目依赖，需要单独安装:  
RUN npm install serve  
  
# 复制应用代码  
COPY . .  
  
# 构建应用  
RUN npm run build  
  
# 暴露端口  
EXPOSE 3000  
  
# 启动应用  
# 使用 npx (如果 serve 未作为项目依赖安装，npx 会临时下载)  
# CMD ["npx", "serve", "-s", "out", "-l", "3000"]  
# 或者，如果 serve 是项目依赖 (通过 npm install 安装了)  
CMD ["./node_modules/.bin/serve", "-s", "out", "-l", "3000"]
