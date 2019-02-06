FROM node:10.12-alpine

RUN mkdir /app
WORKDIR /app

RUN apk update && apk upgrade
RUN apk add --no-cache git python g++ make \
    && npm install -g truffle --unsafe-perm
