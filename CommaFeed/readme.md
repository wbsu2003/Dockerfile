`CommaFeed`源代码地址：[https://github.com/Athou/commafeed](https://github.com/Athou/commafeed)

镜像基于官方发布的 `jar` 包构建而不是源代码，对应的 `jar` 包版本为 `2.6.0`

构建镜像和容器运行的基本命令如下👇

```bash
# 新建目录
mkdir commafeed
  
# 进入目录  
cd commafeed

# 将 Dockerfile 放入当前目录
  
# 构建镜像
docker build -t wbsu2003/commafeed:v1 .

# 运行容器
docker run -d \
   --name commafeed \
   -p 8082:8082 \
   -v $(pwd)/config:/config \
   -v $(pwd)/data:/home/commafeed \
   wbsu2003/commafeed:v1
```
