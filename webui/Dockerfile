FROM golang:1.21.8-bullseye AS builder

RUN apt-get update \
    && apt-get -y install gcc cmake autoconf libtool pkg-config libmnl-dev libyaml-dev apt-transport-https ca-certificates

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt update \
    && apt install nodejs -y

# Clean apt cache
RUN apt-get clean

WORKDIR free5gc

COPY Lab4-Webconsole/ .

RUN mkdir -p config/ public/

RUN make


# Config files volume
VOLUME [ "/free5gc/config" ]

# Certificates (if not using default) volume
VOLUME [ "/free5gc/cert" ]


# WebUI uses the port 5000
EXPOSE 5000
# BillingDomain uses the port 2121 as FTP
EXPOSE 2121