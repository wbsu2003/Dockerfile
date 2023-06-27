构建服务端镜像的基本命令如下👇

```bash
# 直接下载代码
git clone https://github.com/giandonatoinverso/PHP-Dynamic-Qr-code.git

# 通过代理下载原代码
git clone https://ghproxy.com/github.com/giandonatoinverso/PHP-Dynamic-Qr-code.git

# 进入目录
cd PHP-Dynamic-Qr-code/docker

# 构建镜像
docker build -t wbsu2003/qrcode:v1 .

# 生成容器
docker run -d \
   --name=qrcode \
   -p 3470:80 \
   -v $(pwd)/config:/var/www/html/config \
   -v $(pwd)/saved_qrcode:/var/www/html/saved_qrcode \
   -e ADMIN_USER=laosu \
   -e ADMIN_PASSWORD=123456 \
   -e DATABASE_HOST=192.168.0.197 \
   -e DATABASE_PORT=3307 \
   -e DATABASE_NAME=qrcode \
   -e DATABASE_USER=qrcode \
   -e DATABASE_PASSWORD=123456 \
   -e DATABASE_PREFIX=qr_ \
   wbsu2003/qrcode:v1
```

镜像使用方法可以在 [老苏的blog：https://laosu.ml](https://laosu.ml)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.ml/uploads/wechat-qcode.jpg)
