regex-vis.com 是一个辅助学习、编写和验证正则表达式的工具。

`regex-vis` 源码地址：[https://github.com/Bowen7/regex-vis](https://github.com/Bowen7/regex-vis)

构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/Bowen7/regex-vis.git
  
# 进入目录
cd regex-vis

# 将 Dockerfile 放入当前目录
  
# 构建镜像
docker build -t wbsu2003/regex-vis:v1 .

# 运行容器
docker run -d \
   --name regex-vis \
   -p 3420:80 \
   wbsu2003/regex-vis:v1
```

镜像使用方法可以在 [老苏的blog：https://laosu.cf](https://laosu.cf)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.cf/uploads/wechat-qcode.jpg)
