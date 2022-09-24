FROM node:lts-slim
LABEL maintainer=laosu<wbsu2003@gmail.com> 
   
# 将服务器端口设为环境变量
ENV HEXO_EDIT_PORT=5777

# 安装环境
RUN \
  apt-get update && \
  apt-get install git -y && \
  npm install -g hexo-cli pnpm react-scripts@latest

RUN \
  pnpm --version; \
  # taobao 源
  pnpm config set registry http://registry.npm.taobao.org

# 设置workdir,指向 hexo 的目录
WORKDIR /myblog

# 公开服务器端口
EXPOSE ${HEXO_EDIT_PORT}

# 构建基础服务器和配置（如果不存在），然后启动
CMD \
  if [ "$(ls -A /myblog/hexo-editor)" ]; then \
    echo "***** hexo-editor程序目录存在并且有内容, 跳过 *****" && \
    cd hexo-editor/ ; \
  else \
    echo "***** hexo-editor程序目录不存在或为空, 下载安装hexo editor *****" && \
    hexo init && \
    git clone https://ghproxy.com/github.com/gethexon/hexon.git hexo-editor && \
    cd hexo-editor/ && \
    pnpm install && \
    pnpm run setup; \
  fi; \
  pnpm start; \
