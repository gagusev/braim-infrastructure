FROM alpine:latest

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf "/var/cache/apk/*"

RUN mkdir /pki 

WORKDIR /openssl-certs

ENTRYPOINT ["sh"]