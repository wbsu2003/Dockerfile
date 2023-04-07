构建镜像和容器运行的基本命令如下👇

```bash
# 新建目录
mkdir swingmusic

# 进入目录
cd swingmusic

# 创建 Dockerfile 文件
touch Dockerfile

# 构建镜像  
docker build -t wbsu2003/swingmusic:v1 .  

# 运行容器  
docker run -d \
   --name swingmusic \
   -p 1970:1970 \
   -v $(pwd)/data:/data \
   -v $(pwd)/music:/music \
   wbsu2003/swingmusic:v1
```

镜像使用方法可以在 [老苏的blog：https://laosu.ml](https://laosu.ml)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.ml/uploads/wechat-qcode.jpg)
