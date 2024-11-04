#!/bin/bash

# 生成证书
if [ "$GENERATE_KEYSTORE" = "true" ]; then
    echo "生成 keystore..."
    if [ -z "$KEYSTORE_PASSWORD" ]; then
        echo "请设置 KEYSTORE_PASSWORD 环境变量。"
        exit 1
    fi
    /usr/local/bin/generate-keystore.sh
fi

# 检查 keystore 文件是否存在
if [ ! -f "$KEYSTORE_PATH" ]; then
    echo "Error: Keystore file $KEYSTORE_PATH does not exist."
    exit 1
else
    echo "Keystore file found: $KEYSTORE_PATH"
fi

# 检查 apksigner 是否可用
if ! command -v apksigner &> /dev/null; then
    echo "apksigner 未找到，请检查 Android SDK 是否正确安装。"
    exit 1
fi

# 检查环境变量是否设置
if [[ -z "$APP_URL" || -z "$NEW_APP_URL" || -z "$ORIGINAL_APK_NAME" ]]; then
    echo "请设置环境变量 APP_URL、NEW_APP_URL 和 ORIGINAL_APK_NAME"
    exit 1
fi

# 定义输入和输出路径
INPUT_DIR="/app/input"
OUTPUT_DIR="/app/output"
ORIGINAL_APK="$INPUT_DIR/$ORIGINAL_APK_NAME"

# 创建 decompiled 目录
DECOMPILED_DIR="/app/decompiled"
if [ -d "$DECOMPILED_DIR" ]; then
    rm -rf "$DECOMPILED_DIR"
fi

# 提取原 APK 的签名信息
SIGNATURE_INFO=$(apksigner verify --print-signature "$ORIGINAL_APK")
echo "原 APK 签名信息："
echo "$SIGNATURE_INFO"

# 反编译 APK
apktool d "$ORIGINAL_APK" -o "$DECOMPILED_DIR"

# 替换字符串
find "$DECOMPILED_DIR" -type f -exec sed -i "s|$APP_URL|$NEW_APP_URL|g" {} +

# 重新编译 APK
apktool b "$DECOMPILED_DIR" -o "$OUTPUT_DIR/${ORIGINAL_APK_NAME%.apk}_new.apk"

# 使用 PKCS#12 keystore 对新 APK 进行签名
if apksigner sign --ks "$KEYSTORE_PATH" --ks-type PKCS12 --ks-pass pass:"$KEYSTORE_PASSWORD" --key-pass pass:"$KEYSTORE_PASSWORD" --out "$OUTPUT_DIR/${ORIGINAL_APK_NAME%.apk}_new_signed.apk" "$OUTPUT_DIR/${ORIGINAL_APK_NAME%.apk}_new.apk"; then
    echo "新 APK 已生成并输出到 $OUTPUT_DIR/${ORIGINAL_APK_NAME%.apk}_new_signed.apk"
else
    echo "签名失败，未生成新 APK。"
    exit 1
fi
