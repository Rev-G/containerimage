FROM ubuntu:jammy
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install python3 python3-pip python3-venv python3-wheel gcc unzip curl sudo -y && \
    apt-get clean
