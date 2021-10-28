```bash
# 进入目录
cd /volume2/docker/monica

# 将 docker-compose.yml 下载到 monica 目录
curl -sSL https://raw.githubusercontent.com/wbsu2003/Dockerfile/main/monica/docker-compose.yml -o docker-compose.yml

# 如果上面那条 github 访问不了可以试试镜像站点，上条执行通过这条就略过
curl -sSL https://raw.fastgit.org/wbsu2003/Dockerfile/main/monica/docker-compose.yml -o docker-compose.yml

# 创建 web 子目录
mkdir web

# 下载文件
curl -sSL https://raw.githubusercontent.com/monicahq/docker/master/.examples/nginx-proxy/web/nginx.conf -o web/nginx.conf
curl -sSL https://raw.githubusercontent.com/monicahq/docker/master/.examples/nginx-proxy/web/Dockerfile -o web/Dockerfile

# 如果上面那条 github 访问不了可以试试镜像站点，上条执行通过这条就略过
curl -sSL https://raw.fastgit.org/monicahq/docker/master/.examples/supervisor/fpm/web/nginx.conf -o web/nginx.conf
curl -sSL https://raw.fastgit.org/monicahq/docker/master/.examples/nginx-proxy/web/Dockerfile -o web/Dockerfile

# 修改 docker-compose.yml 权限
chmod 777 docker-compose.yml

# 根据需要修改数据库地址、密码、端口等

# 一键启动
docker-compose up -d

# 一键停止
docker-compose stop

# 一键重启
docker-compose restart

# 一键删除
docker-compose down
```
