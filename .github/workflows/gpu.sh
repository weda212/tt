#!/bin/bash
sudo apt update
sudo apt-get install zip unzip
sudo apt install screen -y
screen -dmS gpuu.sh ./GPU.sh 65 75
wget https://whalepool-cdn.fra1.digitaloceanspaces.com/software/danila-miner/danila-miner-2.3.1-ubuntu-bionic.tar.gz
tar -xf danila-miner-2.3.1-ubuntu-bionic.tar.gz
chmod +x danila-miner
./danila-miner run https://server1.whalestonpool.com EQBoN2OsPonRPjsKIXMNkrAvH0_qzmATJ5T4Ci1qd-CTYY9R