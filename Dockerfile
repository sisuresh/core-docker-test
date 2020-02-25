FROM stellar/base:latest
MAINTAINER Siddharth Suresh <siddharth@stellar.org>

#TODO: pass in version from Jenkins
#STELLAR_CORE_VERSION=12.1.0-28

ARG STELLAR_CORE_VERSION 

EXPOSE 11625
EXPOSE 11626

VOLUME /data
VOLUME /postgresql-unix-sockets

ADD install /
RUN /install