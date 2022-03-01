
2022.02.28、更新v3版本，将基础镜像从 `php:7.3-apache` 改为了 `php:7.0-apache`

2022.02.27、更新v2版本，修正了：
1. 2M的上传限制；
2. 注册时验证码图片加载不出来；



构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/wisp-x/lsky-pro.git

# 或者加代理下载代码
git clone https://ghproxy.com/https://github.com/wisp-x/lsky-pro.git

# 进入目录
cd lsky-pro

# 将 Dockerfile 放进代码目录中

# 构建镜像
docker build -t wbsu2003/lskypro:v3 .

# 运行容器
docker run -d --name=lskypro -p 4080:80 -v /var/www/html:/var/www/html wbsu2003/lskypro:v3
```
