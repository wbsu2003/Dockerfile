构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/karlomikus/vue-salt-rim.git
  
# 进入目录  
cd vue-salt-rim

# 将 Dockerfile 放入当前目录
  
# 构建镜像
docker build -t wbsu2003/salt-rim:v3 .

# 将 zh-CN.json 放入/src/locales/messages/ 目录
# 修改 de-DE.js，将指向了 de-DE.json 改为了 zh-CN.json

# 运行容器
docker run -d \
    --name salt-rim \
    -e API_URL=http://your-bar-assistant-url \
    -e MEILISEARCH_URL=http://your-meilisearch-url \
    -p 8080:8080 \
    wbsu2003/salt-rim:v3
```

镜像使用方法可以在 [老苏的blog：https://laosu.ml](https://laosu.ml)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.tech/uploads/wechat-qcode.jpg)
