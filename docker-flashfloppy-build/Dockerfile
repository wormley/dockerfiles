FROM debian:bullseye-slim
ENV MAKE_OPTS ""
ENV COMMIT ""
ENV DEBUG ""
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		git \
                ca-certificates \
                make \
		gcc-arm-none-eabi \
 		srecord \
 		stm32flash \
                python3 \
                python3-pip \
 		wget \
 		unzip \
 		zip \
		apt-utils && \ 
                pip3 install --user crcmod intelhex

WORKDIR /tmp/FlashFloppy

CMD git clone --depth 1 --branch ${COMMIT:-master} ${URI:-https://github.com/keirf/FlashFloppy.git} . && make $MAKE_OPTS dist && if [ ! -z $debug ]; then mv flashfloppy*.zip /output/$(echo flashfloppy*.zip | sed 's/\(.*\).zip/\1-debug.zip/'); else mv flashfloppy*.zip /output; fi
#$(echo flashfloppy*.zip | sed 's/\(.*\).zip/\1-debug.zip/')
#

# Ports and volumes.
VOLUME /output
