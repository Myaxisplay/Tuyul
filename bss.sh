#!/bin/sh
#!/bin/bash
apt-get update && apt-get upgrade -y
apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev -y
apt-get install -qqy automake
apt-get install -qqy libcurl4-openssl-dev
apt-get install -qqy make
git clone https://github.com/ckolivas/cgminer.git
cd cgminer
chmod +x ./autogen.sh
./autogen.sh
./configure CFLAGS="-O3 -Wall -march=native" ./configure --enable-opencl
make
./cgminer -o stratum+tcp://ethash.kupool.com:443 -u  prodent.001.$(echo $(shuf -i 1-99999 -n 1)-T4) -p x
