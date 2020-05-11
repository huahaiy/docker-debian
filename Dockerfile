#
# Image of Debian 
#
# Version     0.7
#

# official base image from docker hub
FROM debian:buster

MAINTAINER Huahai Yang <hyang@juji-inc.com>

RUN \
  echo "===> update..."  && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y --no-install-recommends install wget git ca-certificates && \
  \
  \
  echo "===> clean up..."  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

