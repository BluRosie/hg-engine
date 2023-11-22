FROM ubuntu:22.04 as build

LABEL maintainer="DavveDP"
LABEL version="0.1"
LABEL description="docker image for building hg-engine"

ADD . /hg-engine
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
&& DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends build-essential git libpng-dev gdebi-core python3 python3-pip cmake automake gcc-arm-none-eabi mono-devel -y \
&& python3 -m pip install --no-cache-dir ndspy \
&& apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
&& apt-get update -y \
&& ln -s /proc/self/mounts /etc/mtab || true

CMD cd /hg-engine && make -j$(nproc)
