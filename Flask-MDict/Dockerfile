FROM python:3.8-slim
LABEL maintainer=laosu<wbsu2003@gmail.com>

ENV NAME FlaskMDict
VOLUME /app

WORKDIR /app
COPY . .
  
# Environment
# 阿里源 
RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/ && \
    pip install --upgrade pip && \
    pip install -r requirements.txt
  
# Application
EXPOSE 5000

RUN chmod +x check_mdx.sh
CMD ["sh", "check_mdx.sh"]
