#!/usr/bin/env sh

find '/usr/share/nginx/html' -name '*.js' -exec sed -i -e 's,netease_vanau,'"$VUE_APP_NETEASE_API_URL"',g' {} \;

find '/usr/share/nginx/html' -name '*.js' -exec sed -i -e 's,netease_vaeau,'"$VUE_APP_ELECTRON_API_URL"',g' {} \;

find '/usr/share/nginx/html' -name '*.js' -exec sed -i -e 's,netease_vaeaud,'"$VUE_APP_ELECTRON_API_URL_DEV"',g' {} \;

find '/usr/share/nginx/html' -name '*.js' -exec sed -i -e 's,netease_valak,'"$VUE_APP_LASTFM_API_KEY"',g' {} \;

find '/usr/share/nginx/html' -name '*.js' -exec sed -i -e 's,netease_valass,'"$VUE_APP_LASTFM_API_SHARED_SECRET"',g' {} \;

find '/usr/share/nginx/html' -name '*.js' -exec sed -i -e 's,netease_dsp,'"$DEV_SERVER_PORT"',g' {} \;

nginx -g "daemon off;"