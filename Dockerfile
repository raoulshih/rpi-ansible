FROM resin/rpi-raspbian:jessie
MAINTAINER Raoul Shih <raoul.shih@gmail.com>

RUN apt-get update && apt-get upgrade && \
    apt-get install ansible --fix-missing  && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /data

CMD ["bash"]
