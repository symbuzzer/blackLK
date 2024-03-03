sudo apt-get install gcc make git wget unzip zip libc6-dev #libc6-dev-amd64

#sudo dpkg --add-architecture i386
#sudo apt-get update

wget http://docs.leaflabs.com/static.leaflabs.com/pub/codesourcery/originals/arm-2009q3-68-arm-none-eabi-i686-pc-linux-gnu.tar.bz2
tar xvfj arm-2009q3-68-arm-none-eabi-i686-pc-linux-gnu.tar.bz2

make htcleo TOOLCHAIN_PREFIX=./arm-2009q3/bin/arm-none-eabi-
