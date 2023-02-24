FROM debian:stable-slim

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y \
        bc \
        bison \
        build-essential \
        cpio \
        flex \
        libelf-dev \
        libncurses-dev \
        libssl-dev \
        vim-tiny \
        wget \
        git \
        autoconf \
        automake \
        autotools-dev \
        curl \
        libmpc-dev \
        libmpfr-dev \
        libgmp-dev \
        gawk \
        texinfo \
        gperf \
        libtool \
        patchutils \
        zlib1g-dev \
        libexpat-dev

RUN wget -O riscv-toolchain.tar.bz2 "https://toolchains.bootlin.com/downloads/releases/toolchains/riscv64-lp64d/tarballs/riscv64-lp64d--glibc--bleeding-edge-2022.08-1.tar.bz2"
RUN tar -xf riscv-toolchain.tar.bz2
RUN mv riscv64* riscv-toolchain
RUN rm riscv-toolchain.tar.bz2
ENV PATH "$PATH:/riscv-toolchain/bin"