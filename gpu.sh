#!/bin/sh
sudo apt update
sudo apt install libpci3
sudo wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.42/lolMiner_v1.42_Lin64.tar.gz
tar -xf lolMiner_v1.42_Lin64.tar.gz
cd lolMiner_v1.42_Lin64
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && ./lolMiner --algo ETHASH --pool ethash.poolbinance.com:443 --user henes001.$ip-N --tls 0
