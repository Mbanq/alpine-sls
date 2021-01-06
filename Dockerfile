FROM mhart/alpine-node:15.5.1

MAINTAINER Mbanq <dev@mbanq.com>

RUN apk update && apk upgrade && apk add \
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
