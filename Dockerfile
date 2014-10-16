#
# Image of Debian Stable 
#
# Version     0.1
#

# (semi)official base image from docker hub
FROM debian:latest

MAINTAINER Huahai Yang <hyang@juji.io>

RUN \
  echo "===> update..."  && \
  apt-get update && \
  apt-get install -y wget && \
  \
  \
  echo "===> install CA certificates..."  && \
  apt-get install -y ca-certificates && \
  \
  \
  echo "===> clean up..."  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

