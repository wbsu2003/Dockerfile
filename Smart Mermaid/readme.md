构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/liujuntao123/smart-mermaid.git

# 通过代理
git clone https://gh-proxy.com/github.com/liujuntao123/smart-mermaid.git
  
# 进入目录  
cd smart-mermaid
  
# 构建镜像
docker build -t wbsu2003/smart-mermaid:v1 .

# 运行容器
docker run -d \
   --restart unless-stopped \
   --name smart-mermaid \
   -p 3200:3000 \
   -e ACCESS_PASSWORD=123456 \
   wbsu2003/smart-mermaid:v1
```
