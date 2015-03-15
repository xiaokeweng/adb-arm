#!/bin/bash 

export PREFIX='Install'
mkdir -f Install
export TOOLCHAIN=/opt/freescale/usr/local/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi/bin/arm-none-linux-gnueabi-

export CC=$(TOOLCHAIN)gcc
export RANLIB=$(TOOLCHAIN)ranlib
./Configure --prefix=/ linux-generic32 shared
make
sudo make INSTALL_PREFIX=$TOOLCHAIN install_sw
