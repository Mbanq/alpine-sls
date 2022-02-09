FROM mhart/alpine-node:15.5.1

MAINTAINER Mbanq <dev@mbanq.com>

RUN apk update -q && apk upgrade -q && apk add -q \
    bash \
    git \
    grep \
    openjdk8-jre \
    python3 \
    curl \
    py3-pip \
    ansible; \
    pip3 install --quiet --upgrade pip awscli boto3; \
    ansible-galaxy collection install community.aws amazon.aws community.general community.postgresql; \
    mkdir /etc/ansible/

ENV NODE_ENV development

CMD ["/usr/bin/java", "-version"]

RUN npm install -g serverless
