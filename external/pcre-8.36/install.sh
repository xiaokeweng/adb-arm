export PATH=$PATH:/opt/freescale/usr/local/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi/bin
./configure --host=arm-fsl-linux-gnueabi CC=arm-fsl-linux-gnueabi-gcc \
AR=arm-fsl-linux-gnueabi-ar STRIP=arm-fsl-linux-gnueabi-strip \
RANLIB=arm-fsl-linux-gnueabi-ranlib \
--prefix=/opt/freescale/usr/local/gcc-4.4.4-glibc-2.11.1-multilib-1.0/arm-fsl-linux-gnueabi

make
sudo make install
