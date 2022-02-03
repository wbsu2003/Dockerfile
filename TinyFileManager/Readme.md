构建镜像和容器运行的基本命令如下👇

```bash
# 下载原代码
git clone https://github.com/prasathmani/tinyfilemanager.git

# 如果 github 慢或者访问不了
git clone https://ghproxy.com/https://github.com/prasathmani/tinyfilemanager.git

# 进入目录
cd tinyfilemanager

# 修改 tinyfilemanager.php 中 jquery 的路径

# 修改官方的 Dockerfile 文件

# 构建镜像
docker build -t wbsu2003/tinyfilemanager:v1 .

# 发布镜像
docker push wbsu2003/tinyfilemanager:v1
```
