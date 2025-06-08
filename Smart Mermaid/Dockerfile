# 使用 Node.js 作为基础镜像  
FROM node:18

# 设置工作目录
WORKDIR /usr/src/app

# 复制应用代码  
COPY . .

# 设置默认环境变量
ENV NEXT_PUBLIC_MAX_CHARS=20000
ENV NEXT_PUBLIC_DAILY_USAGE_LIMIT=5
ENV AI_API_URL=https://api.openai.com/v1
ENV AI_API_KEY=your_api_key
ENV AI_MODEL_NAME=gpt-3.5-turbo
ENV ACCESS_PASSWORD=your_access_password

# 构建应用
RUN npm install
RUN npm run build

# 暴露端口
EXPOSE 3000

# 启动应用
CMD ["npm", "start"]
