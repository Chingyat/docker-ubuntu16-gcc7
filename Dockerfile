FROM ubuntu:16.04

RUN apt-get update && apt-get install -y build-essential \
    autoconf automake libtool \
    autoconf-archive software-properties-common

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && \
    apt-get update && \
    apt-get install -y gcc-7 g++-7

RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 100 && \
    update-alternatives --config gcc && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 100 && \
    update-alternatives --config g++
