FROM node:13-slim

MAINTAINER laosu <https://laosu.ml>

# 将服务器端口设为环境变量
ENV HEXO_EDIT_PORT=5777

# 安装依赖
RUN \
apt-get update && \
apt-get install git -y && \
npm install -g hexo-cli

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
	git clone https://github.com/YuJianghao/winwin-hexo-editor hexo-editor && \
    npm install inquirer && \
    cd hexo-editor/ && \
    # sed "s/5777/${HEXO_EDIT_PORT}/g" config.default.js && \
	echo -e "\n" | node install.js; \
  fi; \
  npm run start; \
