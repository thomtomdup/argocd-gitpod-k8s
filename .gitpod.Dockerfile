FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl sudo vim git net-tools gnupg lsb-release unzip
