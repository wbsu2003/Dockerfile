构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/liyupi/yulegeyu.git
  
# 或者加个代理  
git clone https://ghproxy.com/github.com/liyupi/yulegeyu.git
  
# 进入目录  
cd yulegeyu

# 将 Dockerfile 放入当前目录
  
# 构建镜像
docker build -t wbsu2003/yulegeyu:v1 .

# 运行容器
docker run -d \
   --name yulegeyu \
   -p 3399:80 \
   wbsu2003/yulegeyu:v1
```
