#!/bin/bash
systemctl stop gost
rm /usr/local/bin/gost
mkdir ./gost
cd ./gost
wget https://raw.githubusercontent.com/FrankLiangCN/GOST/main/gost.service
mv ./gost.service /etc/systemd/system
cd ..
rm -rf ./gost
mkdir -p /opt/gost
bash <(curl -fsSL https://github.com/go-gost/gost/raw/master/install.sh) --install
systemctl start gost
systemctl enable gost
