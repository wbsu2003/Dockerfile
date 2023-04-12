构建镜像和容器运行的基本命令如下👇

```bash
# 下载原代码
git clone https://github.com/CN-Tower/zjson.git

# 如果 github 慢或者访问不了
git clone https://ghproxy.com/github.com/CN-Tower/zjson.git

# 进入目录
cd zjson

# 构建镜像
docker build -t wbsu2003/zjson:v1 .

# 生成容器
docker run -d \
--name=zjson \
-p 3590:80 \
wbsu2003/zjson:v1
```
