#!/bin/sh
apt update
apt install -y \
  tzdata \
  cmake \
  git \
  python \
  python-pip

pip install conan
