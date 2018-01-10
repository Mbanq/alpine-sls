FROM alpine:latest

MAINTAINER Mbanq <dev@mbanq.com>

RUN apk update && apk upgrade && apk add \
    bash \
    git \
    nodejs-npm

ENV NODE_ENV development

RUN npm install -g serverless