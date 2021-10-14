```bash
# 将 Dockerfile 和 supervisord.conf 放在同一个目录

# 构建镜像
docker build -t wbsu2003/bypy:v2 .

# 生成容器
docker run -it --name=bypy \
-v /volume2/docker/bypy:/baidupy \
wbsu2003/bypy:v2
 
# 运行容器
docker start bypy

# 进入容器
docker exec --user root -it bypy /bin/sh

# 退出容器
exit 或者 ctrl+D
```
