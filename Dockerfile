FROM alpine:3.9

RUN set -xe;\
    apk add --no-cache \
        squid \
        apache2-utils \
    ;

COPY conf/squid.conf /etc/squid/squid.conf
COPY entrypoint.sh /usr/bin/local/entrypoint

EXPOSE 3128

ENTRYPOINT /usr/bin/local/entrypoint
