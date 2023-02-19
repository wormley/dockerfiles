FROM ubuntu:22.04
MAINTAINER Steve <user@example.com>

RUN apt-get update
RUN apt-get -y install software-properties-common strace gdb mesa-utils
RUN apt-add-repository ppa:kicad/kicad-7.0-releases && apt update
RUN apt-get -y install kicad kicad-libraries
RUN mkdir /data
RUN chown 1000:1000 /data

USER 1000:1000
ENV HOME=/data
CMD ["bash"]


