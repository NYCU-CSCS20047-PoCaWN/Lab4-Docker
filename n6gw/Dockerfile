FROM bitnami/minideb:bullseye

RUN apt-get update \
    && apt-get install -y libmnl0 libyaml-0-2 iproute2 iptables \
    && apt-get clean

WORKDIR /root

VOLUME [ "/root" ]