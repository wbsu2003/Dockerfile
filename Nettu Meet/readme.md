构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/fmeringdal/nettu-meet.git

# 或者镜像站点
git clone https://hub.fastgit.org/fmeringdal/nettu-meet.git

# 进入目录
cd nettu-meet

# 将 Dockerfile 、supervisord.conf 、default.conf 三个文件放进代码目录中

# 构建镜像
docker build -t wbsu2003/nettu-meet:v1 .

# 将 docker-compose.yml 放入安装目录

# 一键启动
docker-compose up -d

# 一键删除
docker-compose down

# --------调试-------------
# 进入容器
docker exec --user root -it nettu-meet /bin/bash
# ------------------------
```
