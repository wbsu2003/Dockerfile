桌面客户端采用了 `Electron` 开发， `Web` 客户端共用的同一套代码，**需要注意** 的是：

- 编译机器的内存要大一些，默认老苏编译用的虚拟机都是 `2G` 的，会提示系统内存不足，直接调到了 `8G`才顺利通过了；
- 因为 `nginx` 中未做任何处理，网页在 `sign out` 服务器时，页面不会跳转，会显示 `nginx` 的错误，不用理会；

构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/actualbudget/actual.git

# 或者加个代理
git clone https://ghproxy.com/github.com/actualbudget/actual.git

# 进入目录  
cd actual

# 构建镜像
docker build -t wbsu2003/actual:v1 .

# 运行Web客户端容器
docker run -d \
   --restart unless-stopped \
   --name actual-web \
   -p 15005:80 \
   -v $(pwd)/app:/app \
   wbsu2003/actual:v1
```


镜像使用方法可以在 [老苏的blog：https://laosu.cf](https://laosu.cf)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.cf/uploads/wechat-qcode.jpg)
