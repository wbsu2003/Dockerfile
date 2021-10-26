构建镜像和容器运行的基本命令如下👇

```bash
# 下载代码
git clone https://github.com/hermanTenuki/ASCII-Generator.site.git ags

# 或者镜像站点
git clone https://hub.fastgit.org/hermanTenuki/ASCII-Generator.site.git ags

# 进入目录
cd ags

# 将 `Dockerfile` 文件放到代码根目录中

# 修改 project/settings.py 文件
# 1.将 EASY_RUN_MODE 从 False 设置为 True
# 2.将 TIME_ZONE='UTC' 改为 `Asia/Shanghai`

# 构建镜像
docker build -t wbsu2003/asciigen:v1 .

# 运行容器
docker run -d \
--name=wbsu2003-asciigen1 \
-p 1234:1234 \
wbsu2003/asciigen:v1
```
