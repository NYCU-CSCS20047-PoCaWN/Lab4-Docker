FROM golang:1.24

# Install common tools
RUN apt-get update && apt-get install -y \
    make \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Golangci-lint 
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b /usr/local/bin

RUN apt-get update && apt-get install -y net-tools iputils-ping jq

WORKDIR /free5gc

COPY Lab4-AF/ .
RUN make

# Config files volume
VOLUME [ "/free5gc/config" ]

# Certificates (if not using default) volume
VOLUME [ "/free5gc/cert" ]


EXPOSE 8000