构建镜像和容器运行的基本命令如下👇

```bash
# 拉取代码
git clone https://github.com/a-wing/filegogo.git

# 或者镜像站点
git clone https://hub.fastgit.org/a-wing/filegogo.git

# 进入目录
cd filegogo

# 构建镜像
docker build -t wbsu2003/filegogo:v1 .

# 生成容器
docker run -it \
--name=filegogo \
-p 3478:8080 \
wbsu2003/filegogo:v1
```
