FROM node:8-alpine

MAINTAINER JohnWang <wangjiajun@vchangyi.com>

RUN set -x \
    && echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && apk update \
    && apk add yarn git bash \
    && rm -rf /tmp/* /var/cache/apk/*
