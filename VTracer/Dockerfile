FROM node:16.5 as build-base

RUN apt-get update \
    && apt-get install -y git build-essential curl

# Install rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y 

# Add .cargo/bin to PATH
ENV PATH="/root/.cargo/bin:${PATH}"

# Check cargo is visible
RUN cargo --help

# Install wasm-pack
RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh

WORKDIR /app
COPY . .

WORKDIR /app/webapp/app
RUN npm install
RUN wasm-pack build
RUN npm run build

FROM nginx:1.12-alpine
LABEL maintainer=laosu<wbsu2003@gmail.com>

COPY --from=build-base /app/docs /usr/share/nginx/html
COPY --from=build-base /app/webapp/app/dist /usr/share/nginx/html

# Add the WASM mime type
RUN echo "types { application/wasm wasm; }" >>/etc/nginx/mime.types

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
