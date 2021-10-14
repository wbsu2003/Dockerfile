```bash
# 创建镜像
docker build -t wbsu2003/nav:v1 . 

# 生成容器
docker run -d -p 7000:7000 -v /volume2/docker/nav:/nav --restart=always --name nav wbsu2003/nav:v1
```
