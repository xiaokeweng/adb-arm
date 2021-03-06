#!/bin/bash

PROJECT_BASE=$(pwd);
PROJECT_REPOSITORY=$PROJECT_BASE/download
INSTALL_PREFIX=$PROJECT_BASE/compiled/armv5te

mkdir -p $INSTALL_PREFIX && mkdir -p $PROJECT_BASE/download && mkdir -p $PROJECT_BASE/build

export TOOL_PREFIX=/opt/freescale/usr/local/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi

SYSROOT=/opt/freescale/usr/local/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi/arm-fsl-linux-gnueabi/include

export CC="${TOOL_PREFIX}/bin/arm-none-linux-gnueabi-gcc --sysroot=$SYSROOT"
export CXX="${TOOL_PREFIX}/bin/arm-none-linux-gnueabi-g++ --sysroot=$SYSROOT"

CC="${TOOL_PREFIX}/bin/arm-none-linux-gnueabi-gcc"
CXX="${TOOL_PREFIX}/bin/arm-none-linux-gnueabi-g++"

export AR="${TOOL_PREFIX}/bin/arm-none-linux-gnueabi-ar"
export RANLIB="${TOOL_PREFIX}/bin/arm-none-linux-gnueabi-ranlib"
export LD="${TOOL_PREFIX}/bin/arm-none-linux-gnueabi-ld"
export STRIP="${TOOL_PREFIX}/bin/arm-none-linux-gnueabi-strip"
export NM="${TOOL_PREFIX}/bin/arm-none-linux-gnueabi-nm"
export CCLD=$LD
export CHOST=arm-none-linux-gnueabi


PARENT_DIR=$(pwd);

#cd $PROJECT_BASE/build && tar -xzvf $PROJECT_REPOSITORY/pcre-8.34.tar.gz && cd ./pcre-8.34

LDFLAGS_DEP="-lc"

#CPPFLAGS="-I${INSTALL_PREFIX}/include"


# CFLAGS="-march=armv5t -marm -mlittle-endian -mglibc -static -I${INSTALL_PREFIX}/include"
LDFLAGS="-L${INSTALL_PREFIX}/lib"
./configure --prefix=${INSTALL_PREFIX}cd --with-sysroot --target=arm-none-linux-gnueabi --host=x86_64
make -j4
sudo make install;
cd -;

cd ${PARENT_DIR};
