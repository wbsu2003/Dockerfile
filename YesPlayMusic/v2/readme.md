
```bash
# 下载代码,当前对应的是 0.4.1
git clone https://github.com/qier222/YesPlayMusic.git

# 或者镜像站点
git clone https://hub.fastgit.org/qier222/YesPlayMusic.git

# 进入目录
cd YesPlayMusic

# 将 Dockerfile 、 replace_api_url.sh 、supervisord.conf、nginx.conf 、default.conf 五个文件放进代码目录中

# 构建镜像
docker build -t wbsu2003/yesplaymusic:v2 .

# 生成容器
docker run -d \
--name=mplay \
-p 3320:80 \
-e VUE_APP_NETEASE_API_URL=/api \
wbsu2003/yesplaymusic:v2

# --------调试-------------
# 将生成的静态文件拷贝到容器外
docker cp yesplaymusic:/usr/share/nginx/html/. ./dist

# 将生成的静态文件拷贝到容器内
docker cp /dist/. yesplaymusic:/usr/share/nginx/html
# ------------------------
```
