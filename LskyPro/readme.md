```bash
# 构建镜像
docker build -t wbsu2003/lskypro:v1 .

# 运行容器
docker run --name=lskypro -p 4080:80 -v /var/www/html:/var/www/html wbsu2003/lskypro:v1
```
