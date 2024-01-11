#!/bin/bash
systemctl stop gost
systemctl disable gost
rm /etc/systemd/system/gost.service -f
systemctl daemon-reload
systemctl reset-failed
rm /usr/local/bin/gost
wget --no-check-certificate -P /etc/systemd/system https://raw.githubusercontent.com/FrankLiangCN/GOST/main/gost.service
bash <(curl -fsSL https://github.com/go-gost/gost/raw/master/install.sh) --install
mkdir -p /opt/gost
wget --no-check-certificate -P /opt/gost https://raw.githubusercontent.com/FrankLiangCN/GOST/main/gost.yml
systemctl start gost
systemctl enable gost
