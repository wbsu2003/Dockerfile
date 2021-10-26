FROM python:3.8-slim
LABEL maintainer=laosu<wbsu2003@gmail.com>

# set work directory
WORKDIR /ags
COPY ./requirements.txt /ags

# set environment variables
## 防止 Python 将 pyc 文件复制到容器中
ENV PYTHONDONTWRITEBYTECODE 1
## 确保将 Python 输出记录到终端，从而可以实时监控 Django 日志。
ENV PYTHONUNBUFFERED 1

# Environment
# 可更换的源：
# 1.阿里源：mirrors.aliyun.com
# 2.清华源：mirrors.tuna.tsinghua.edu.cn
# 3.网易源：mirrors.163.com
#RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
RUN sed -i s@/deb.debian.org/@/mirrors.163.com/@g /etc/apt/sources.list \
    && rm -Rf /var/lib/apt/lists/* \
    && apt-get clean \
    && apt-get -y update --fix-missing -o Acquire::http::No-Cache=True \
    && apt-get install -y python3-pip python3-opencv libpq-dev 

# 可更换的源：
# 1.清华源：https://pypi.tuna.tsinghua.edu.cn/simple
# 2.豆瓣源：http://pypi.douban.com/simple
# 3.阿里源：https://mirrors.aliyun.com/pypi/simple
# 4.腾讯源：http://mirrors.cloud.tencent.com/pypi/simple
RUN pip install --upgrade pip -i https://mirrors.aliyun.com/pypi/simple --trusted-host mirrors.aliyun.com \
   && pip install -r requirements.txt

# copy project
COPY . /ags
RUN chmod +x manage.py

# Application
EXPOSE 1234

CMD ["python", "manage.py", "runserver", "0.0.0.0:1234"]
