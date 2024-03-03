sudo apt-get install gcc make git wget unzip zip libc6-dev-amd64 libc6-dev

#wget http://www.codesourcery.com/sgpp/lite/arm/portal/package5353/public/arm-none-eabi/arm-2009q3-68-arm-none-eabi-i686-pc-linux-gnu.tar.bz2
#tar xvfj arm-2009q3-68-arm-none-eabi-i686-pc-linux-gnu.tar.bz2

make htcleo TOOLCHAIN_PREFIX=arm-none-eabi- #FIXME
