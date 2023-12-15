`iptv-m3u-maker` 源码地址：[https://github.com/EvilCult/iptv-m3u-maker](https://github.com/EvilCult/iptv-m3u-maker)

构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/EvilCult/iptv-m3u-maker.git

# 进入目录 
cd iptv-m3u-maker

# 构建镜像
docker build -t wbsu2003/iptv-m3u-maker:v1 .

# 运行容器
docker run -it -d \
   --name iptv \
   -p 9527:9527 \
   -v $(pwd)/python/plugins/dotpy_source:/srv/iptv/python/plugins/dotpy_source \
   wbsu2003/iptv-m3u-maker:v1
```

镜像使用方法可以在 [老苏的blog：https://laosu.cf](https://laosu.cf)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.cf/uploads/wechat-qcode.jpg)
