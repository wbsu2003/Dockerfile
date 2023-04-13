构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码  
git clone https://github.com/renzhezhilu/webp2jpg-online.git  
    
# 或者加个代理  
git clone https://ghproxy.com/github.com/renzhezhilu/webp2jpg-online.git  
    
# 进入目录    
cd webp2jpg-online  
  
# 将 Dockerfile 放入当前目录  
    
# 构建镜像  
docker build -t wbsu2003/webp2jpg-online:v1 .  
  
# 运行容器  
docker run -d \  
   --name webp2jpg-online \  
   -p 3400:80 \  
   wbsu2003/webp2jpg-online:v1
```
