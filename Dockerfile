#
# Image of Debian Stable 
#
# Version     0.1
#

# base image from docker hub
FROM debian:latest

MAINTAINER Huahai Yang <hyang@juji.io>

RUN \
  echo "===> install CA certificates"  && \
  apt-get install -y ca-certificates 
