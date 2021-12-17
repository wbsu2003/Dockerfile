构建镜像和容器运行的基本命令如下👇

```bash
# 拉取源代码
git clone https://github.com/anyRTC-UseCase/ARCall.git

# 如果 github 慢或者访问不了
git clone https://hub.fastgit.org/anyRTC-UseCase/ARCall.git

# 进入代码目录
cd ARCall/Call-web

# 将 Dockerfile、 replace_appid.sh 文件放进 ARCall/Call-web 目录中

# 修改 ARCall/Call-web/assets/js/index.js 文件

# 构建镜像
docker build -t wbsu2003/arcall:v1 .

# 生成容器
docker run -d \
--name=arcall \
-p 3580:80 \
-e RTC_APPID=你的AppID \
-e RTM_APPID=你的AppID \
wbsu2003/arcall:v1
```
