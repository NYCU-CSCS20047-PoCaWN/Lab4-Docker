FROM golang:1.24

# Install common tools
RUN apt-get update && apt-get install -y \
    make \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y net-tools iputils-ping jq

VOLUME [ "/free5gc/Lab4-AF" ]

WORKDIR /free5gc/Lab4-AF

EXPOSE 8000