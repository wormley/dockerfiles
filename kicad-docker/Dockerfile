FROM ubuntu:22.04
MAINTAINER Steve <user@example.com>
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
RUN apt-get update && apt-get -y install --no-install-recommends software-properties-common strace gdb mesa-utils gpg-agent && apt-get clean
RUN apt-add-repository ppa:kicad/kicad-8.0-releases && apt-get update && apt-get -y install kicad kicad-libraries && apt-get clean
RUN mkdir /data
RUN chown 1000:1000 /data

USER 1000:1000
ENV HOME=/data
CMD ["bash"]


