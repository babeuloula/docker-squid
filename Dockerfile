FROM alpine:3.18

RUN set -xe;\
    apk add --no-cache \
        squid \
        apache2-utils \
    ;

COPY conf/squid.conf /etc/squid/squid.conf

EXPOSE 3128

CMD squid -NYCd 1
