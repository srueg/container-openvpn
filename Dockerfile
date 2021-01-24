FROM docker.io/library/alpine:3.13

RUN apk add --no-cache openssl easy-rsa openvpn iptables bash

# Configure tun
RUN mkdir -p /dev/net \
&&  mknod /dev/net/tun c 10 200

EXPOSE 1194/udp

CMD [ "/bin/bash" ]
