# 生成私钥
openssl genrsa -out my-release-key.pem 2048

# 生成自签名证书
openssl req -new -x509 -key my-release-key.pem -out my-release-cert.pem -days 365 -subj "/CN=MyApp/C=US"

# 将私钥和证书合并为 PKCS#12 文件
openssl pkcs12 -export -out "$KEYSTORE_PATH" -inkey my-release-key.pem -in my-release-cert.pem -name "my-key-alias" -passout pass:"$KEYSTORE_PASSWORD"

# 检查生成的 keystore 文件
if [ -f $KEYSTORE_PATH ]; then
    echo "Keystore successfully created at $KEYSTORE_PATH"
else
    echo "Failed to create keystore."
fi

# 清理临时文件
rm my-release-key.pem my-release-cert.pem
