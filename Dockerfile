FROM node:lts-alpine

WORKDIR .

COPY install_scanner.js .

RUN apk \
  --no-cache \
  add \
  ca-certificates \
  wget && \
  wget \
  -q \
  -O \
  /etc/apk/keys/sgerrand.rsa.pub \
  https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
  apk add \
  --no-cache \
  --repository https://apkproxy.herokuapp.com/sgerrand/alpine-pkg-glibc \
  glibc \
  glibc-bin && \
  npm install -g sonarqube-scanner && \
  node ./install_scanner.js

ENTRYPOINT ["/bin/ash"]
