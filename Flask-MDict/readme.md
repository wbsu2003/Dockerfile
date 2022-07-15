构建镜像和容器运行的基本命令如下👇

```bash
# 直接下载代码
git clone https://github.com/liuyug/flask-mdict.git

# 通过代理下载源代码
git clone https://ghproxy.com/github.com/liuyug/flask-mdict.git

# 进入目录
cd flask-mdict

# 将 Dockerfile 、check_mdx.sh 放入当前目录

# 构建镜像
docker build -t wbsu2003/flaskmdict:v1 .

# 生成容器
docker run -d \
   --name=flaskmdict \
   --privileged \
   -p 5860:5000 \
   -v $(pwd)/content:/app/content \
   -e FLASK_ENV=development \
   -e FLASK_APP=app.py \
   -e MDICT_DIR=/app/content \
   wbsu2003/flaskmdict:v1
```
