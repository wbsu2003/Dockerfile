构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/visioncortex/vtracer.git

# 或通过代理下载
git clone https://ghproxy.com/github.com/visioncortex/vtracer.git

# 进入目录
cd vtracer

# 将 Dockerfile 放入当前目录

# 构建镜像
docker build -t wbsu2003/vtracer:v1 .

# 运行容器
docker run -d \
   --name vtracer \
   -p 7930:80 \
   wbsu2003/vtracer:v1
```
