构建镜像和容器运行的基本命令如下👇

```bash
# 直接下载代码
git clone https://github.com/liyupi/yuindex.git

# 通过代理下载原代码
git clone https://ghproxy.com/https://github.com/liyupi/yuindex.git

# 进入服务端目录
cd yuindex/server

# 构建服务端镜像
docker build -t wbsu2003/yuindex-server:v1 .

# 进入前端目录
cd yuindex

# 前端建议用老苏的 Dockerfile 文件取代官方的，用官方的也可以，只是官方的端口是 8080，老苏的是 80；

# 构建前端镜像
docker build -t wbsu2003/yuindex-client:v1 .
```
