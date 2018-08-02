FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
   nfs-common

ADD run.sh /run.sh

RUN mkdir -p /nfs 

ENTRYPOINT ["/run.sh"]
