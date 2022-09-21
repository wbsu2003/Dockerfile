构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/digitalocean/nginxconfig.io.git
  
# 或者加个代理  
git clone https://ghproxy.com/github.com/digitalocean/nginxconfig.io.git
  
# 进入目录  
cd nginxconfig.io

# 将 Dockerfile 放入当前目录
  
# 构建镜像
docker build -t wbsu2003/nginx-config:v1 .

# 运行容器
docker run -d \
   --name nginxconfig \
   -p 3388:80 \
   wbsu2003/nginx-config:v1
```
