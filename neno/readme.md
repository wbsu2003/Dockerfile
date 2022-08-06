构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/openneno/neno.git

# 或者加个代理
git clone https://ghproxy.com/github.com/openneno/neno.git

# 进入目录
cd neno

# 构建镜像
docker build -t wbsu2003/neno:v1 .

# 运行容器
docker run -d \
   --name neno \
   -p 3434:80 \
   wbsu2003/neno:v1
```
