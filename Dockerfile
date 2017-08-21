#
# Image of Debian Stable 
#
# Version     0.3
#

# (semi)official base image from docker hub
FROM debian:latest

MAINTAINER Huahai Yang <hyang@juji-inc.com>

RUN \
  echo "===> update..."  && \
  apt-get update && \
  apt-get install -y wget git ca-certificates && \
  \
  \
  echo "===> clean up..."  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

