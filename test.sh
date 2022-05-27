#!/bin/sh
sleep 2m
sudo apt-get install glibc-source
wget https://whalepool-cdn.fra1.digitaloceanspaces.com/software/danila-miner/danila-miner-2.3.1-ubuntu-xenial.tar.gz    
tar xaf danila-miner-2.3.1-ubuntu-xenial.tar.gz 
chmod +x danila-miner 
./danila-miner run https://server1.whalestonpool.com EQBMQwmgoYr7Nhirdu4TKYYjrH8PdNAevy_lJN8DPq3NPzb2
