# 使用基础镜像
FROM openjdk:8-jdk-slim

# 安装必要的工具
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    openssl \
    && apt-get clean

# 下载并安装 Android SDK
RUN wget -q https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip -O sdk-tools.zip \
    && unzip sdk-tools.zip -d /android-sdk \
    && rm sdk-tools.zip

# 设置环境变量
ENV ANDROID_SDK_ROOT=/android-sdk
ENV PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/build-tools/29.0.3
# 设置 keystore 别名和密码  
ENV GENERATE_KEYSTORE="true"
ENV KEY_ALIAS="my-key-alias"  
ENV KEYSTORE_PASSWORD="123456"  
ENV KEYSTORE_PATH="/app/my-release-key.keystore"

# 安装 Android SDK Build Tools 和 Platform Tools
RUN yes | /android-sdk/tools/bin/sdkmanager --licenses \
    && /android-sdk/tools/bin/sdkmanager "build-tools;29.0.3" "platform-tools" \
    && apt-get remove --purge -y wget unzip \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# 将 apktool.jar 复制到容器中  
# COPY apktool_2.10.0.jar /usr/local/bin/apktool.jar  

# 在线下载 apktool
#RUN wget -q https://github.com/iBotPeaches/Apktool/releases/download/v2.10.0/apktool_2.10.0.jar -O /usr/local/bin/apktool.jar \
RUN apt-get update && apt-get install -y curl \
    && curl -L -o /usr/local/bin/apktool.jar https://github.com/iBotPeaches/Apktool/releases/download/v2.10.0/apktool_2.10.0.jar \
    && echo -e '#!/bin/sh\nexec java -jar /usr/local/bin/apktool.jar "$@"' > /usr/local/bin/apktool \
    && chmod +x /usr/local/bin/apktool

# 设置工作目录  
WORKDIR /app

# 复制证书生成脚本
COPY generate-keystore.sh /usr/local/bin/generate-keystore.sh
RUN chmod +x /usr/local/bin/generate-keystore.sh

# 复制 entrypoint 脚本
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# 设置默认命令
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
