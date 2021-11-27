#!/usr/bin/env sh  
  
find '/app/client/build/static/js' -name '*.js' -exec sed -i -e 's,'wss://sky-office.herokuapp.com','"$BACKEND_URL"',g' {} \; 

serve -s build -n -l 3000
