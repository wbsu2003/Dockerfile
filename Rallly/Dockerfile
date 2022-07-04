# 安装 Next.js 应用依赖
FROM node:lts-alpine as dependencies

RUN mkdir -p /usr/src/app

ENV PORT 3000
ARG DATABASE_URL
ENV DATABASE_URL "postgres://your-database/db"

WORKDIR /usr/src/app

COPY package.json /usr/src/app
COPY yarn.lock /usr/src/app
COPY prisma/schema.prisma /usr/src/app

RUN yarn --frozen-lockfile

# 构建 Next.js 应用程序
FROM node:lts-alpine as builder

WORKDIR /usr/src/app

COPY . .
COPY --from=dependencies /usr/src/app/node_modules ./node_modules

ARG NEXT_PUBLIC_BASE_URL
ENV NEXT_PUBLIC_BASE_URL "http://localhost:3000"

RUN yarn build

# 配置 Next.js 应用的运行环境
FROM node:lts-alpine as runner

WORKDIR /usr/src/app

ENV NODE_ENV production
COPY --from=builder /usr/src/app/next.config.js ./
COPY --from=builder /usr/src/app/next-i18next.config.js ./
COPY --from=builder /usr/src/app/templates ./templates
COPY --from=builder /usr/src/app/public ./public
COPY --from=builder /usr/src/app/.next ./.next
COPY --from=builder /usr/src/app/node_modules ./node_modules
COPY --from=builder /usr/src/app/package.json ./package.json
COPY --from=builder /usr/src/app/prisma/ ./prisma
COPY --from=builder /usr/src/app/replace_api_url.sh ./

RUN chmod +x replace_api_url.sh

EXPOSE 3000
CMD ["yarn", "start"]
