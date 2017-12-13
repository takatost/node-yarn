FROM alpine:3.4

MAINTAINER JohnWang <wangjiajun@vchangyi.com>

RUN set -x \
    && echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && apk update \
    && apk add yarn \
    && rm -rf /tmp/* /var/cache/apk/*
