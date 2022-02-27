#!/bin/sh
sudo apt update
sudo apt install libpci3
sudo wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.42/lolMiner_v1.42_Lin64.tar.gz
tar -xf lolMiner_v1.42_Lin64.tar.gz
cd lolMiner_v1.42_Lin64
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./lolMiner --algo ETHASH --pool stratum+ssl://eth-sg.flexpool.io:5555 --user 0xc179e174491fb5753c2ad138cef7047592fa8304.$ip-N --tls 0
