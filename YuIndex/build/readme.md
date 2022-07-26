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

# 前端要用老苏的 `Dockerfile` 文件替换官方的；

# 构建前端镜像
docker build -t wbsu2003/yuindex-client:v1 .
```
