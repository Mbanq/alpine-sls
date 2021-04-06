FROM mhart/alpine-node:15.5.1

MAINTAINER Mbanq <dev@mbanq.com>

RUN apk update -q && apk upgrade -q && apk add -q \
    bash \
    git \
    grep \
    openjdk8-jre \
    python3 \
    py3-pip

ENV NODE_ENV development

CMD ["/usr/bin/java", "-version"]

RUN npm install -g serverless
