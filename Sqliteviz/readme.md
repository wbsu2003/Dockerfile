Sqliteviz 是一个轻量级 SQLite 可视化工具。


`Sqliteviz` 源码地址：[https://github.com/lana-k/sqliteviz](https://github.com/lana-k/sqliteviz)

构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/lana-k/sqliteviz.git

# 进入目录  
cd sqliteviz

# 构建镜像
docker build -t wbsu2003/sqliteviz:v1 -f Dockerfile.test .

# 运行容器
docker run -d \
   --name sqliteviz \
   -p 3366:80 \
   wbsu2003/sqliteviz:v1
```

镜像使用方法可以在 [老苏的blog：https://laosu.tech](https://laosu.tech)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.tech/uploads/wechat-qcode.jpg)
