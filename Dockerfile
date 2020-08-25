FROM mhart/alpine-node:12

MAINTAINER Mbanq <dev@mbanq.com>

RUN apk update && apk upgrade && apk add \
    bash \
    git \
    grep \
    openjdk8-jre \
    python3 \
    py3-pip

ENV NODE_ENV development

CMD ["/usr/bin/java", "-version"]

RUN npm install -g serverless
