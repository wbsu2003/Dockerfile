构建镜像和容器运行的基本命令如下👇

```bash
# 下载原代码
git clone https://github.com/miroslavpejic85/mirotalk.git

# 如果 github 慢或者访问不了
git clone https://hub.fastgit.org/miroslavpejic85/mirotalk.git

# 进入目录
cd mirotalk

# 构建镜像
docker build -t wbsu2003/mirotalk:v1 . --network=host

# 生成容器(使用ngrok)
docker run -it --name=mirotalk \
-p 3330:3000 \
-e NGROK_ENABLED=true \
-e NGROK_AUTH_TOKEN="Your ngrok Authtoken" \ # 你的 ngrok Authtoken
wbsu2003/mirotalk:v1
```
