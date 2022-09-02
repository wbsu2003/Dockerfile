FROM node:latest
WORKDIR /usr/src/app
COPY . .
RUN npm config set registry http://registry.npm.taobao.org
RUN npm install
EXPOSE 3000
CMD [ "npm", "start" ]
