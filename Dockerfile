FROM debian:wheezy
MAINTAINER Yunia <yunia@yunia.nl>
RUN apt-get update && apt-get upgrade

RUN apt-get install -yq make build-essential cmake libxml2-dev libxslt1-dev zlib1g-dev

#add auto untar
ADD ./sources/hiawatha-9.8.tar.gz /root/
#ADD ./sources/hiawatha-9.8.tar.gz /root/hiawatha-9.8.tar.gz
#RUN tar xzf /root/hiawatha-9.8.tar.gz -C /root/

RUN mkdir /root/hiawatha-9.8/build/
WORKDIR /root/hiawatha-9.8/build/
RUN cmake ..
RUN make
