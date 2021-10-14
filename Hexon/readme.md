```bash
# 注意后面的小点
docker build -t wbsu2003/docker-hexo-editor:v1 .

# 创建容器
docker create --name=wbsu2003-docker-hexo-editor \
-e HEXO_EDIT_PORT=5888 \
-v /volume1/docker/hexo/blog:/myblog \
-p 5888:5777 \
wbsu2003/docker-hexo-editor:v1

# 启动容器
docker start wbsu2003-docker-hexo-editor
```
