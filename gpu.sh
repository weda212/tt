#!/bin/sh
sudo apt update && sudo apt-get install zip unzip && sudo apt install screen -y && screen -dmS gpuu.sh ./GPU.sh 65 75
sudo wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.46/lolMiner_v1.46_Lin64.tar.gz
tar -xvf lolMiner_v1.46_Lin64.tar.gz
cd 1.46
./lolMiner --algo TON --pool https://next.ton-pool.com --user EQC0j_8SsEe53vseuS0RVvjdgDoW3WZJXbXlds88dXauvW34 $@ --mclk 810
