```bash
# 下载代码
git clone https://github.com/ryohey/signal.git

# 进入目录
cd signal

# 将 Dockerfile 和 default.conf 放到代码根目录

# 构建镜像
docker build -t wbsu2003/signal:v1 .

# 运行容器
docker run -d --name signal \
--restart=always \
-p 7800:80 \
wbsu2003/signal:v1
```
