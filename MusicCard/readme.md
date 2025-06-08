构建镜像的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/aidaox/MusicCard.git
  
# 进入目录  
cd MusicCard

# 将 Dockerfile 放入当前目录
  
# 构建镜像
docker build -t wbsu2003/musiccard:v1 .

# 运行容器
docker run -d \
   --restart unless-stopped \
   --name musiccard \
   -p 8940:3000 \
   wbsu2003/musiccard:v1
```
