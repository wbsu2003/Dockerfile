构建镜像和容器运行的基本命令如下👇

```bash
# 下载原代码
git clone https://github.com/lihongxun945/gobang.git

# 如果 github 慢或者访问不了
git clone https://hub.fastgit.org/lihongxun945/gobang.git

# 进入目录
cd gobang

# 构建镜像
docker build -t wbsu2003/gobang:v1 .

# 生成容器
docker run -d \
--name=gobang \
-p 3390:80 \
wbsu2003/gobang:v1
```
