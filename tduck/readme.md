```bash
# 新建目录
mkdir tduck

# 进入目录
cd tduck

# 拉取后端代码
git clone https://gitee.com/TDuckApp/tduck-platform.git

# 拉取前端代码
git clone https://gitee.com/TDuckApp/tduck-front.git

# 将 Dockerfile 、supervisord.conf、nginx.conf、docker-compose.yaml、.env 五个文件放进 tduck 目录中

# 构建镜像
docker build -t wbsu2003/tduck:v1 .

# 进入容器
docker exec --user root -it tduck /bin/bash

# 一键启动
docker-compose up -d

# 一键删除
docker-compose down
```
