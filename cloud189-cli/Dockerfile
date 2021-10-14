FROM python:3.8-slim
MAINTAINER laosu<wbsu2003@gmail.com>

WORKDIR /cloud189
COPY . /cloud189

# Environment
ENV TERM=xterm
RUN pip install -r requirements.txt 

# Application
EXPOSE 80
ENV NAME cloud189-cli

CMD ["python3", "/cloud189/main.py"]
