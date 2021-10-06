#! /bin/bash
set -x
mkdir -p /tmp/build

cd /tmp/build
git clone --depth 1 --branch ${COMMIT:-master} ${URI:-https://github.com/mrdotx/zenith-xt-usb} tree
cd /tmp/build/tree
if [[ -s /output/config.h ]] ; then cp /output/config.h . ; fi
make clean
make
cp zenith_usb.??? /output/
