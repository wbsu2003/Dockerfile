# An easy way to run tests locally without Nodejs installed:      
#      
#     docker build -t sqliteviz/test -f Dockerfile.test .      
#      
      
FROM node:16.16 as build-base   
    
RUN set -ex; \    
    apt update; \    
    apt install -y chromium firefox-esr; \    
    npm install -g npm@7    
    
WORKDIR /tmp/build    
    
COPY package.json package-lock.json ./    
COPY lib lib      
RUN npm install      
    
COPY . .    
    
RUN set -ex; \    
    sed -i 's/browsers: \[.*\],/browsers: ['"'FirefoxHeadlessTouch'"'],/' karma.conf.js    
    
#RUN npm run lint -- --no-fix && npm run test  
RUN npx browserslist@latest --update-db && \  
    npm run build  
  
FROM nginx:1.12-alpine  
COPY --from=build-base /tmp/build/dist /usr/share/nginx/html  
  
EXPOSE 80  
  
CMD ["nginx", "-g", "daemon off;"]
