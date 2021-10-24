构建镜像和容器运行的基本命令如下👇

```bash
# 下载原代码
git clone https://github.com/AutoPiano/AutoPiano.git

# 如果 github 慢或者访问不了
git clone https://hub.fastgit.org/AutoPiano/AutoPiano.git

# 进入目录
cd AutoPiano

# 构建镜像
docker build -t wbsu2003/autopiano:v1 .

# 生成容器
docker run -d \
--name=autopiano \
-p 3380:80 \
wbsu2003/autopiano:v1
```
