PPTist 还原了大部分 Office PowerPoint 常用功能，支持在线编辑、演示和导出 PPT 文件。


`PPTist` 源码地址：[https://github.com/pipipi-pikachu/PPTist](https://github.com/pipipi-pikachu/PPTist)

构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/pipipi-pikachu/PPTist.git

# 进入目录  
cd PPTist

# 构建镜像
docker build -t wbsu2003/pptist:v1 .

# 运行容器
docker run -d \
   --name pptist \
   -p 3277:80 \
   wbsu2003/pptist:v1
```

镜像使用方法可以在 [老苏的blog：https://laosu.cf](https://laosu.cf)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.cf/uploads/wechat-qcode.jpg)
