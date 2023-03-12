构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码（国内用户）
git clone https://gitee.com/xupingmao/xnote.git
  
# 下载代码（国外用户） 
git clone https://github.com/xupingmao/xnote.git
  
# 进入目录  
cd xnote

# 修改 config/requirements.txt 文件，增加一行 mysql-connector>=2.2.9

# 构建镜像
docker build -t wbsu2003/xnote:v2 .

# 运行容器
docker run -d \
   --name xnote \
   -p 1234:1234 \
   -v $(pwd)/data:/data \
   -v $(pwd)/boot.properties:/config/boot/boot.sae.properties \
   wbsu2003/xnote:v2
```
