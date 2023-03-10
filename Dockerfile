FROM debian:latest

USER root

WORKDIR /root
RUN apt-get update && apt-get install -y \
    wget \
    unzip
RUN wget https://github.com/rustdesk/rustdesk-server/releases/download/1.1.7/rustdesk-server-linux-amd64.zip

RUN unzip rustdesk-server-linux-amd64.zip && mv /root/amd64/hbbr /usr/bin/hbbr && mv /root/amd64/hbbs /usr/bin/hbbs

WORKDIR /root