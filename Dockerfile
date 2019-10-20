FROM alpine:3.4

MAINTAINER Raja Kumar Gupta <rajakumargupta@example.com>

RUN     apk -U add ansible=2.1.4.0-r0 \
        bash=4.3.42-r5 \
        curl\
        jq \
        openssh \
        sshpass=1.05-r0 \
        && rm -rf /var/cache/apk/* \
        && rm -rf ~/.pip/cache/*

WORKDIR /var/workspace

