`Radishes` 源码地址：[https://github.com/Linkontoask/radishes](https://github.com/Linkontoask/radishes)

构建镜像和容器运行的基本命令如下👇

```bash
# 克隆项目
git clone https://github.com/Linkontoask/radishes.git

# 进入目录
cd radishes/

# 将 Dockerfile 和 nginx.conf 放进代码目录中

# 构建镜像
docker build -t wbsu2003/radishes:v1 .

# 生成容器
docker run -d \
   --name=radishes \
   -p 3331:80 \
   wbsu2003/radishes:v1
```

镜像使用方法可以在 [老苏的blog：https://laosu.cf](https://laosu.cf)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.cf/uploads/wechat-qcode.jpg)
