构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/YunYouJun/cook.git

# 或通过代理下载
git clone https://ghproxy.com/github.com/YunYouJun/cook.git

# 进入目录
cd cook

# 将 Dockerfile 放到代码根目录

# 构建镜像
docker build -t wbsu2003/cook:v1 .

# 运行容器
docker run -d \
   --name cook \
   -p 3333:80 \
   wbsu2003/cook:v1
```
