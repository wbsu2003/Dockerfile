# 使用 Node.js 作为基础镜像
FROM node:20.16

# 设置工作目录
WORKDIR /app

# 复制项目文件到工作目录
COPY . .

# 安装项目依赖
RUN npm install

# 运行 Vite 开发服务器
CMD ["npm", "run", "dev", "--", "--host"]
