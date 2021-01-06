FROM mhart/alpine-node:12

MAINTAINER Mbanq <dev@mbanq.com>

RUN apk update -q && apk upgrade -q && apk add -q \
    bash \
    git \
    grep \
    openjdk8-jre \
    python3 \
    py3-pip \
    cargo && \
    cargo install cfn-guard

ENV NODE_ENV development

ENV PATH "/root/.cargo/bin:${PATH}"

CMD ["/usr/bin/java", "-version"]

RUN npm install -g serverless
