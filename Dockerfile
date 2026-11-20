FROM ubuntu:26.04@sha256:d66b366dac61b575bee2aef07e9c26e8070096fbe84a3d4d3eb0da069b5d76db

# https://github.com/opencontainers/image-spec/blob/main/annotations.md
LABEL org.opencontainers.image.title="hg-engine build environment" \
  org.opencontainers.image.description="Docker image for building hg-engine." \
  org.opencontainers.image.source="https://github.com/BluRosie/hg-engine"

ARG DEBIAN_FRONTEND=noninteractive

# https://docs.docker.com/build/building/best-practices/#sort-multi-line-arguments
RUN apt-get update && apt-get install --yes --no-install-recommends \
  autoconf \
  automake \
  build-essential \
  ca-certificates \
  cargo \
  cmake \
  gcc-arm-none-eabi \
  git \
  libgl1 \
  libglib2.0-0t64 \
  libpng-dev \
  pkg-config \
  python3-pip \
  python3-venv \
  rsync \
  && rm --recursive --force /var/lib/apt/lists/*

# Owned by the build user, so a new volume mounted here (docker-makerom.cmd on macOS) is writable too
RUN mkdir /hg-engine && chown ubuntu:ubuntu /hg-engine

WORKDIR /hg-engine

# Always run as a user after installing packages, never root!
# https://nvd.nist.gov/vuln/detail/cve-2019-5736
USER ubuntu

CMD ["sh", "-c", "exec make --jobs=$(nproc)"]
