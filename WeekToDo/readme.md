构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/manuelernestog/weektodo.git
  
# 或者加个代理
git clone https://ghproxy.com/github.com/manuelernestog/weektodo.git
  
# 进入目录  
cd weektodo

# 将 Dockerfile 放入当前目录
  
# 构建镜像
docker build -t wbsu2003/weektodo:v1 .

# 运行容器
docker run -d \
   --name weektodo \
   -p 3808:80 \
   wbsu2003/weektodo:v1
```


镜像使用方法可以在 [老苏的blog：https://laosu.cf](https://laosu.cf)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.cf/uploads/wechat-qcode.jpg)
