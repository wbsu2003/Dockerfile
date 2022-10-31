构建的基本命令如下👇

```bash
# 下载代码（国内）
git clone https://gitee.com/easychen/pushdeer.git
  
# 下载代码（国外）
git clone https://github.com/easychen/pushdeer.git
  
# 进入目录  
cd pushdeer/docker/web/

# 复制 api 和 push 到当前目录的 web 目录中
cp -r ../../api ./
cp -r ../../push ./

# 从安装成功的机器上，将 vendor 目录复制到 api 目录中

# 修改 Dockerfile 文件，增加了将 api 目录（包含 vendor 目录）和 push 目录复制容器中的动作；

# 修改 init.sh
## 1、将容器内的 api 目录 复制到 app/api 和 push 目录复制到 app/push 的动作 ；
## 2、增加国内源 https://mirrors.aliyun.com/composer/；

# 构建镜像
docker build -t wbsu2003/pushdeer:v1 .
```
