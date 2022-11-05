构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/erohtar/Dasherr.git
  
# 或者加个代理  
git clone https://ghproxy.com/github.com/erohtar/Dasherr.git
  
# 进入目录  
cd Dasherr

# 将 Dockerfile 放入当前目录
  
# 构建镜像
docker build -t wbsu2003/dasherr:v1 .

# 运行容器
docker run -d \
   --name dasherr \
   -p 18080:80 \
   -v $(pwd)/www:/usr/share/nginx/html \
   wbsu2003/dasherr:v1
```
