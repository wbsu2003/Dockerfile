
构建镜像和容器运行的基本命令如下👇

```bash
# 下载源代码
git clone https://github.com/kevinshen56714/SkyOffice.git

# 如果 github 慢或者访问不了
git clone https://hub.fastgit.org/kevinshen56714/SkyOffice.git

# 进入目录
cd SkyOffice

# 构建镜像
docker build -t wbsu2003/skyoffice:v1 .

# 生成容器
docker run -d \
--name=skyoffice \
-p 3330:3000 \
-e NODE_ENV=production \
wbsu2003/skyoffice:v1
```
