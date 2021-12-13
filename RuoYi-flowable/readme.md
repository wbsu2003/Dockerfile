构建镜像和容器运行的基本命令如下👇

```bash
# 拉取源代码代码
git clone https://gitee.com/tony2y/RuoYi-flowable.git

# 进入代码目录
cd RuoYi-flowable

# 将 Dockerfile 、supervisord.conf、nginx.conf 三个文件放进 RuoYi-flowable 目录中

# 修改 ruoyi-ui/.env.production，启用 VUE_APP_BASE_API = '/prod-api'

# 修改 /root/RuoYi-flowable/ruoyi-flowable/src/main/java/com/ruoyi/flowable/config/MyDefaultProcessDiagramCanvas.java ，将 import com.sun.prism.paint.Color;  注释掉

# 构建镜像
docker build -t wbsu2003/flowable:v1 .

# 将 docker-compose.yaml 、.env 两个文件放进 RuoYi-flowable 目录中

# 一键启动
docker-compose up -d

# 一键停止
docker-compose stop

# 一键重启
docker-compose restart

# 一键删除
docker-compose down
```
