#!/bin/bash
systemctl stop gost
rm /usr/local/bin/gost
wget --no-check-certificate -O /etc/systemd/system https://raw.githubusercontent.com/FrankLiangCN/GOST/main/gost.service
bash <(curl -fsSL https://github.com/go-gost/gost/raw/master/install.sh) --install
mkdir -p /opt/gost
systemctl start gost
systemctl enable gost
