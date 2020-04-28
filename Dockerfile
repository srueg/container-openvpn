FROM docker.io/library/alpine:3.11@sha256:39eda93d15866957feaee28f8fc5adb545276a64147445c64992ef69804dbf01

RUN apk add --no-cache openssl easy-rsa openvpn iptables bash

# Configure tun
RUN mkdir -p /dev/net \
&&  mknod /dev/net/tun c 10 200

EXPOSE 1194/udp

CMD [ "/bin/bash" ]
