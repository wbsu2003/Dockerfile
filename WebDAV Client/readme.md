构建镜像和容器运行的基本命令如下👇

```bash
# 将 Dockerfile 和 start.sh 放在同一个目录

# 构建镜像
docker build -t wbsu2003/webdav-client:v1 .

# 生成容器
docker run -d \
--name webdav-client
--privileged \
--cap-add=SYS_ADMIN \
--device /dev/fuse \
-e WEBDRIVE_USER=<username> \
-e WEBDRIVE_PASSWORD=<password> \
-e WEBDRIVE_URL=http://url/webdav/ \
-e PUID=1000 \
-v <host/path/to/folder>:/mnt/webdrive:shared \
wbsu2003/webdav-client:v1
```
