#
# Image of Debian Stable 
#
# Version     0.1
#

# (semi)official base image from docker hub
FROM debian:latest

MAINTAINER Huahai Yang <hyang@juji.io>

RUN \
  echo "===> add backports repository..."  && \ 
  echo "deb http://http.debian.net/debian wheezy-backports main" | tee \ 
    /etc/apt/sources.list.d/wheezy-backports.list  && \ 
  apt-get update && \
  \
  \
  echo "===> install new kernel..."  && \
  apt-get install -y -t wheezy-backports linux-image-amd64 && \
  \
  \
  echo "===> install docker..."  && \
  wget -qO- https://get.docker.com/ | sh && \
  \
  \
  echo "===> install CA certificates..."  && \
  apt-get install -y ca-certificates && \
  \
  \
  echo "===> clean up..."  && \
  apt-get clean
