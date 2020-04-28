FROM docker.io/library/alpine:3.10@sha256:a143f3ba578f79e2c7b3022c488e6e12a35836cd4a6eb9e363d7f3a07d848590

RUN apk add --no-cache openssl easy-rsa openvpn iptables bash

# Configure tun
RUN mkdir -p /dev/net \
&&  mknod /dev/net/tun c 10 200

EXPOSE 1194/udp

CMD [ "/bin/bash" ]
