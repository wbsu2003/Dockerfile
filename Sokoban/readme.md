构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/ecyrbe/sokoban.git

# 或者加个代理
git clone https://ghproxy.com/github.com/ecyrbe/sokoban.git

# 进入目录
cd sokoban

# 放入老苏的 Dockerfile 文件；

# 构建镜像
docker build -t wbsu2003/sokoban:v1 .

# 运行容器
docker run -d \
   --restart unless-stopped \
   --name sokoban \
   -p 7180:80 \
   wbsu2003/sokoban:v1 
```
