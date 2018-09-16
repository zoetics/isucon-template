#!/bin/bash -eu

BASE_DIR=/home/isucon/isucon-template

# server1
ssh 192.168.1.1 <<EOC
sudo systemctl stop mariadb
sudo rm -f /var/log/mariadb/mariadb.log
sudo rm -f /var/lib/mysql/slow.log
sudo systemctl start mariadb
EOC

# server2
ssh 192.168.1.2 <<EOC
sudo su - isucon;
cd ${BASE_DIR}; git pull;
rm -f ${BASE_DIR}/webapp/go/server;
make -C ${BASE_DIR}/webapp/go;
sudo systemctl restart isucon.oysters.service;
sudo rm -f /var/log/nginx/access.log /var/log/nginx/error.log
sudo systemctl restart nginx
EOC

# server3
ssh 192.168.1.3 <<EOC
sudo su - isucon;
cd ${BASE_DIR}; git pull;
rm -f ${BASE_DIR}/webapp/go/server;
make -C ${BASE_DIR}/webapp/go;
sudo systemctl restart isucon.oysters.service;
sudo rm -f /var/log/nginx/access.log /var/log/nginx/error.log
sudo systemctl restart nginx
EOC