#!/bin/bash
systemctl stop gost
rm /usr/local/bin/gost
cd /etc/systemd/system
wget https://raw.githubusercontent.com/FrankLiangCN/GOST/main/gost.service
cd /root
mkdir -p /opt/gost
bash <(curl -fsSL https://github.com/go-gost/gost/raw/master/install.sh) --install
systemctl start gost
systemctl enable gost
