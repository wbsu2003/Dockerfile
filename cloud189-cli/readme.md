``bash
# 构建镜像
docker build -t wbsu2003/cloud189-cli:v1 .

# 运行容器
docker run -i -t -p 4000:80 --name=cloud189 -v /volume1/docker/cloud189:/cloud189/downloads wbsu2003/cloud189-cli:v1
```
