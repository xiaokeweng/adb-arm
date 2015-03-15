export TOOLCHAIN=/opt/freescale/usr/local/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi/bin/arm-fsl-linux-gnueabi-
export CC= $(TOOLCHAIN)gcc
export LD= $(TOOLCHAIN)gcc
./configure --prefix=/opt/freescale/usr/local/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi
