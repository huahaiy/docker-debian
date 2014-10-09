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
  echo "===> install docker..."  && \
  wget -O - https://get.docker.com/ | sh && \
  \
  \
  echo "===> clean up..."  && \
  apt-get clean
