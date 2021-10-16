构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码,当前对应的是 1.4.1
git clone https://github.com/XPoet/picx.git

# 或者镜像站点
git clone https://hub.fastgit.org/XPoet/picx.git

# 进入目录
cd picx

# 将 Dockerfile 放进代码目录中

# 构建镜像
docker build -t wbsu2003/picx:v1 .

# 生成容器
docker run -d \
--name=picx \
-p 3480:80 \
wbsu2003/picx:v1
```
