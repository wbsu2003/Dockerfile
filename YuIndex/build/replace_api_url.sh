#!/usr/bin/env sh

find '/usr/share/nginx/html' -name '*.js' -exec sed -i -e 's,'https://yuindex-server-974538-1256524210.ap-shanghai.run.tcloudbase.com','"$BACKEND_URL"',g' {} \;

nginx -g "daemon off;"
