FROM alpine:latest

RUN apk add socat tini

COPY docker-entrypoint.sh /

ENTRYPOINT ["tini", "--"]

CMD ["/docker-entrypoint.sh"]