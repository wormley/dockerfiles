FROM ubuntu:18.04
LABEL Description="Docker image for building LPC projects"
RUN apt-get update && apt-get -y dist-upgrade && apt-get -y --no-install-recommends install zip unzip xauth make libusb-1.0-0-dev dfu-util libwebkit2gtk-4.0-37

COPY /udevadm /sbin/udevadm
COPY /packages /packages
RUN chmod a+rx /sbin/udevadm && sh -c 'dpkg -i /packages/*.deb'
RUN apt-get clean && rm -rf /packages /var/lib/apt

