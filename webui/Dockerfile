FROM golang:1.21.8-bullseye AS builder

RUN apt-get update \
    && apt-get -y install gcc cmake autoconf libtool pkg-config libmnl-dev libyaml-dev apt-transport-https ca-certificates sudo

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt update \
    && apt install nodejs -y

# Clean apt cache
RUN apt-get clean

VOLUME [ "/free5gc/webui"]

WORKDIR /free5gc/webui

# WebUI uses the port 5000
EXPOSE 5000
# BillingDomain uses the port 2121 as FTP
EXPOSE 2121