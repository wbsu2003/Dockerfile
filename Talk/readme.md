构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/vasanthv/talk.git

# 或者加个代理
git clone https://ghproxy.com/github.com/vasanthv/talk.git

# 进入目录
cd talk

# 用老苏的 Dockerfile 文件替换原来的；

# 构建镜像
docker build -t wbsu2003/talk:v1 .

# 运行容器
docker run -d \
   --name talk \
   -p 3355:3000 \
   wbsu2003/talk
```
