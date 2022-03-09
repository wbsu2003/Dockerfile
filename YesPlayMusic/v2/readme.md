
```bash
# 下载代码,当前对应的是 0.4.3
git clone https://github.com/qier222/YesPlayMusic.git

# 国内走代理下载
git clone https://ghproxy.com/https://github.com/qier222/YesPlayMusic.git

# 进入目录
cd YesPlayMusic

# 下载 api 代码 v4.5.8
git clone https://github.com/Binaryify/NeteaseCloudMusicApi.git netease_api

# 国内走代理下载
git clone https://ghproxy.com/github.com/Binaryify/NeteaseCloudMusicApi.git netease_api

# 将 Dockerfile 、 replace_api_url.sh 、supervisord.conf、nginx.conf 、default.conf 五个文件放进代码目录中

# 构建镜像
docker build -t wbsu2003/yesplaymusic:v3 .

# 生成容器
docker run -d \
--name=yesplaymusic \
-p 3320:80 \
-e VUE_APP_NETEASE_API_URL=/api \
-e VUE_APP_LASTFM_API_KEY=<you Last.fm API KEY> \
-e VUE_APP_LASTFM_API_SHARED_SECRET=<you Last.fm API SHARED SECRET> \
wbsu2003/yesplaymusic:v3

# --------调试-------------
# 将生成的静态文件拷贝到容器外
docker cp yesplaymusic:/usr/share/nginx/html/. ./dist

# 将生成的静态文件拷贝到容器内
docker cp /dist/. yesplaymusic:/usr/share/nginx/html
# ------------------------
```
