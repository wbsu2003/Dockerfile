FROM node:16.5 as builder    
MAINTAINER laosu<wbsu2003@gmail.com>    
    
WORKDIR /app    
COPY package.json ./    
    
RUN yarn config set registry https://registry.npm.taobao.org/ & yarn    
RUN yarn add mobx-react mobx-persist mobx mobx-react-form validatorjs valid-url  
COPY . ./  
RUN yarn build    
    
FROM node:16.5 AS runner   
MAINTAINER laosu<wbsu2003@gmail.com>  
  
WORKDIR /app    
  
ENV NODE_ENV production    
    
RUN addgroup --system --gid 1001 nodejs  
RUN adduser --system --uid 1001 nextjs  
       
COPY --from=builder /app/public ./public    
COPY --from=builder --chown=nextjs:nodejs /app/.next ./.next    
COPY --from=builder /app/node_modules ./node_modules    
COPY --from=builder /app/package.json ./package.json    
    
USER nextjs    
EXPOSE 3000    
ENV PORT 3000    
    
CMD ["node_modules/.bin/next", "start"]
