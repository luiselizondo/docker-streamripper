FROM ubuntu:14.04
MAINTAINER Luis Elizondo "lelizondo@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get update --fix-missing
RUN apt-get update --fix-missing
RUN apt-get install -y curl streamripper
RUN apt-get update --fix-missing

# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN apt-get autoremove -y

VOLUME ["/audio"]

WORKDIR /audio

ENTRYPOINT ["/usr/bin/streamripper"]
