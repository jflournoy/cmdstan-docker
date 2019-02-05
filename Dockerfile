FROM debian:jessie
MAINTAINER Tamas K. Papp <tkpapp@gmail.com>

# RUN apt-get update #\
#        && apt-get install --no-install-recommends -qq

RUN wget https://github.com/stan-dev/cmdstan/releases/download/v2.18.1/cmdstan-2.18.1.tar.gz \
        tar -zxpvf cmdstan-2.18.1.tar.gz \
        ln -s cmdstan-2.18.1 cmdstan \
        cd cmdstan \
        make build

ENV NAME cmdstan-docker