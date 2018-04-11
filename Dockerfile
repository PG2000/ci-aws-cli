FROM alpine:3.6

ENV CLI_VERSION=1.15.4

RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install awscli==$CLI_VERSION && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
