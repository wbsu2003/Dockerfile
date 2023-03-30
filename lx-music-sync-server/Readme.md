构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/lyswhut/lx-music-sync-server.git

# 加个代理
git clone https://ghproxy.com/github.com/lyswhut/lx-music-sync-server.git
 
# 进入目录    
cd lx-music-sync-server  
  
# 构建镜像  
docker build -t wbsu2003/lx-music-sync-server:v1 .  
  
# 运行容器  
docker run -d \
   --name lx-music-sync-server \
   -p 9527:9527 \
   wbsu2003/lx-music-sync-server:v1
```
