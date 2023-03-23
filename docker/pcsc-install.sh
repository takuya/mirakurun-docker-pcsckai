#!/usr/bin/env bash 


tar zxvf pcsc.tgz
cd pcsc
make

cp libpcsclite.so.1.0.0 /usr/lib/arm-linux-gnueabihf/libpcsckai.so
sed '/Libs:/s|lpcsclite|lpcsckai|' \
   /usr/lib/arm-linux-gnueabihf/pkgconfig/libpcsclite.pc  \
   >/usr/lib/arm-linux-gnueabihf/pkgconfig/libpcsckai.pc


cd /opt/node_modules/arib-b25-stream-test/src
sed -i 's|libpcsclite|libpcsckai|'  Makefile
make all 
make install 
cd 

#cd /app 
#git clone --depth 1 https://github.com/stz2012/libarib25.git
#cd libarib25
#mkdir build
#cd build
#cmake -DWITH_PCSC_PACKAGE=NO -DWITH_PCSC_LIBRARY=pcsckai ..
#make install 
#cd /app

cd /app 
git clone --depth 1  https://github.com/tsukumijima/libaribb25.git
cd libaribb25 
mkdir build
cd build
cmake -DWITH_PCSC_PACKAGE=NO -DWITH_PCSC_LIBRARY=pcsckai ..
make install 
cp /usr/local/bin/arib-b25-stream-test /opt/bin/arib-b25-stream-test
cd /app


echo end
