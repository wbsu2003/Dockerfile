构建镜像和容器运行的基本命令如下👇

```
# 下载代码
git clone https://github.com/oldjs/web-code-agent.git

# 通过代理
git clone https://gh-proxy.com/github.com/oldjs/web-code-agent.git
  
# 进入目录  
cd web-code-agent

# 构建镜像
docker build -t wbsu2003/web-code-agent:v1 .

# 运行容器
docker run -d \
   --restart unless-stopped \
   --name web-code-agent \
   -p 3250:3000 \
   wbsu2003/web-code-agent:v1
```
