执行下面的命令安装

```bash
# 新建文件夹 yuindex 和 子目录
mkdir -p /volume2/docker/yuindex/{config,data,init}

# 进入目录
cd /volume2/docker/yuindex

# 将 docker-compose.yml、nginx.conf放入当前目录；
# 将 config.prod.js、getConfig.js 放入 /config 目录；
# 将 ddl.sql 放入 /init 目录；

# 一键启动
docker-compose up -d
```

![](https://cdn.jsdelivr.net/gh/wbsu2003/images2022@main/picgo/2022/061/202207262031231.png)
