#!/usr/bin/env sh  
  
echo "---replace begin---"  
  
find '/usr/src/app/.next' -name '*.js' -exec sed -i -e 's,postgres://your-database/db,'"$DATABASE_URL"',g' {} \;  
  
find '/usr/src/app/.next' -name '*.js' -exec sed -i -e 's,http://localhost:3000,'"$NEXT_PUBLIC_BASE_URL"',g' {} \;  
  
echo "---replace end---"  
  
yarn start
