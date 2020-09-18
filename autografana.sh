#!/bin/sh
yum install epel-release -y # To get latest latest epel release
yum update -y  # To get the latest package lists
yum install wget vim nano screen net-tools # install requirment
cd /tmp # chang dir to /tmp
wget https://dl.grafana.com/oss/release/grafana-7.1.5-1.x86_64.rpm # get rpm file garafana
yum install grafana-7.1.5-1.x86_64.rpm # install grafana
yum install fontconfig #Install additional font packages
yum install freetype* #Install additional font packages
yum install urw-fonts #Install additional font packages
systemctl start grafana-server
systemctl restart grafana-server
systemctl enable grafana-server.service
firewall-cmd --zone=public --add-port=3000/tcp --permanent
firewall-cmd --reload
#etc.
