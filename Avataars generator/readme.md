构建镜像和容器运行的基本命令如下👇

```bash
# 下载原代码
git clone https://github.com/fangpenlin/avataaars-generator.git

# 如果 github 慢或者访问不了
git clone https://hub.fastgit.org/fangpenlin/avataaars-generator.git

# 进入目录
cd avataaars-generator

# 将 Dockerfile 放入 avataaars-generator 目录

# 构建镜像
docker build -t wbsu2003/avataaars-generator:v1 .

# 生成容器
docker run -d \
--name=avataaars-generator \
-p 3490:80 \
wbsu2003/avataaars-generator:v1
```
