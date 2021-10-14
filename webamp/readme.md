```bash
# 创建镜像  
docker build -t wbsu2003/webamp:v1 .

# 生成容器  
docker run -d -p 7080:80 --restart=always --name webamp wbsu2003/webamp:v1
```
