FROM mhart/alpine-node:10

MAINTAINER Mbanq <dev@mbanq.com>

RUN apk update && apk upgrade && apk add \
    bash \
    git \
    grep \
    openjdk8-jre

ENV NODE_ENV development

CMD ["/usr/bin/java", "-version"]

RUN npm install -g serverless
