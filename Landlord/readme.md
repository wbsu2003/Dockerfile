
# 构建

```bash
# 下载代码
git clone https://github.com/dwg255/landlord.git

# 或者加个代理
git clone https://ghproxy.com/github.com/dwg255/landlord.git

# 进入目录
cd landlord

将 Dockerfile 放到代码根目录

# 构建镜像
docker build -t wbsu2003/landlord:v1 . 

# 运行容器
docker run -d \
   --name landlord \
   -p 5250:80 \
   wbsu2003/landlord:v1 
```
