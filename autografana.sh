#!/bin/sh
yum install epel-release -y # To get latest latest epel release
yum update -y  # To get the latest package lists
yum install wget vim nano screen net-tools # install requirment
cd /tmp # chang dir to /tmp
wget https://github.com/FosterG4/GPNrepo/raw/master/file/grafana-7.1.1-1.x86_64.rpm # get rpm file garafana
yum install grafana-7.1.1-1.x86_64.rpm -y # install grafana
yum install fontconfig -y #Install additional font packages
yum install freetype* -y #Install additional font packages
yum install urw-fonts -y #Install additional font packages
systemctl start grafana-server
systemctl restart grafana-server
systemctl enable grafana-server.service
firewall-cmd --zone=public --add-port=3000/tcp --permanent
firewall-cmd --reload
rm -rf /tmp/grafana-7.1.1-1.x86_64.rpm # delete file 
#etc.
