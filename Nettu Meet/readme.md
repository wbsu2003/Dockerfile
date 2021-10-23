构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/fmeringdal/nettu-meet.git

# 或者镜像站点
git clone https://hub.fastgit.org/fmeringdal/nettu-meet.git

# 进入目录
cd nettu-meet

# 将 Dockerfile 、supervisord.conf 、default.conf 、replace_api_url.sh 四个文件放进代码目录中

# 构建镜像
docker build -t wbsu2003/nettu-meet:v1 .

# 将 docker-compose.yml 文件放入安装目录

# 一键启动
docker-compose up -d

# 一键删除
docker-compose down

# --------调试-------------
# 进入容器
docker exec --user root -it nettu_meet /bin/bash
  
# 将生成的静态文件拷贝到容器外  
docker cp nettu_meet:/usr/share/nginx/html/. ./dist  
  
# 将生成的静态文件拷贝到容器内  
docker cp /dist/. nettu_meet:/usr/share/nginx/html  
# ------------------------
```
