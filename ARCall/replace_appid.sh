#!/usr/bin/env sh

find '/usr/share/nginx/html' -name '*.js' -exec sed -i -e 's,rtcappid,'"$RTC_APPID"',g' {} \;

find '/usr/share/nginx/html' -name '*.js' -exec sed -i -e 's,rtmappid,'"$RTM_APPID"',g' {} \;

nginx -g "daemon off;"