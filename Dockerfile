FROM mhart/alpine-node:7.9.0
LABEL maintainer "docker@coryodaniel.com"

RUN apk --no-cache update && apk --no-cache add \
    bash \
    curl \
    tar \
    unzip \
    && rm -rf /tmp/* \
    && rm -rf /var/cache/apk/* \
    && rm -rf /var/tmp/*

COPY . /app
WORKDIR /app
