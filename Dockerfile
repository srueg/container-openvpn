FROM docker.io/library/alpine:3.9@sha256:bf1684a6e3676389ec861c602e97f27b03f14178e5bc3f70dce198f9f160cce9

RUN apk add --no-cache openssl easy-rsa openvpn iptables bash

# Configure tun
RUN mkdir -p /dev/net \
&&  mknod /dev/net/tun c 10 200

EXPOSE 1194/udp

CMD [ "/bin/bash" ]
