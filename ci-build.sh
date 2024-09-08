sudo apt-get install gcc make git wget unzip zip libc6-dev #libc6-dev-amd64

#sudo dpkg --add-architecture i386
#sudo apt-get update

wget http://docs.leaflabs.com/static.leaflabs.com/pub/codesourcery/originals/arm-2009q3-68-arm-none-eabi-i686-pc-linux-gnu.tar.bz2
tar xvfj arm-2009q3-68-arm-none-eabi-i686-pc-linux-gnu.tar.bz2

make htcleo TOOLCHAIN_PREFIX=./arm-2009q3/bin/arm-none-eabi-

cp ./build-htcleo/lk.bin ./bin/bootpayload.bin

cd bin
chmod +x yang
./nbgen os.nb
./yang -F RUU_signed.nbh -f os.nb -t 0x400 -s 64 -d PB8110000 -c 11111111 -v CLK1.6.0.0 -l WWE
cd ..
co bin/os.nb ./os.nb
cp bin/RUU_signed.nbh ./LEOIMG.nbh
