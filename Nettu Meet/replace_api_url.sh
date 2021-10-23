#!/usr/bin/env sh  
  
find '/usr/share/nginx/html' -name '*.js' -exec sed -i -e 's,'https://meet.nettubooking.com','"$FRONTEND_URL"',g' {} \; 
  
nginx -g "daemon off;"