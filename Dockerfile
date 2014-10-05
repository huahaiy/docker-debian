#
# Image of Debian Stable 
#
# Version     0.1
#

# base image from docker hub
FROM debian:latest

MAINTAINER Huahai Yang <hyang@juji.io>

RUN \
  apt-get update && \
  echo "===> install CA certificates"  && \
  apt-get install -y ca-certificates 
  \
  \
  echo "===> clean up..."  && \
  apt-get clean
