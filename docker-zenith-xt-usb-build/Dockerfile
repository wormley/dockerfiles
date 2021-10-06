FROM debian:bullseye-slim
ENV MAKE_OPTS ""
ENV COMMIT ""
ENV DEBUG ""
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		git \
		gcc-avr \
                avr-libc \
 		avrdude \
                make \
                ca-certificates \
                binutils-avr

WORKDIR /tmp/build
COPY --chmod=0555 build.sh .

CMD /tmp/build/build.sh

# Ports and volumes.
VOLUME /output
