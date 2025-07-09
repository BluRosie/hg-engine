FROM ubuntu:22.04 as build

LABEL maintainer="DavveDP"
LABEL version="0.1"
LABEL description="docker image for building hg-engine"

ADD . /hg-engine
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
&& DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends libpng-dev build-essential cmake python3-pip python3-venv git automake autoconf gcc-arm-none-eabi pkg-config -y \
&& apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
&& apt-get update -y \
&& ln -s /proc/self/mounts /etc/mtab || true

CMD cd /hg-engine && make -j$(nproc)
