构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/lukevella/rallly.git
  
# 或者加个代理  
git clone https://ghproxy.com/github.com/lukevella/rallly.git 
  
# 进入目录  
cd rallly   

# 修改 Dockerfile 文件

# 新增 replace_api_url.sh 文件

# 构建镜像（v2版）
docker build -t wbsu2003/rallly:v2 .
```
