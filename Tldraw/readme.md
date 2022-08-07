构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/tldraw/tldraw.git

# 或通过代理下载
git clone https://ghproxy.com/github.com/tldraw/tldraw.git

# 进入目录
cd tldraw/apps/www

# 将 Dockerfile 放入当前目录

# 构建镜像
docker build -t wbsu2003/tldraw:v1 .

# 运行容器
docker run -d \
   --name tldraw \
   -p 7900:3000 \
   wbsu2003/tldraw:v1
```
