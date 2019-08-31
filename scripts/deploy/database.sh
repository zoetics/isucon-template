#!/bin/bash -eu

sudo su -l isucon -c '
BASE_DIR=/home/isucon/webapp

### code fetch ###
cd ${BASE_DIR}; git pull;

### daemon reload ###
sudo rm -f /tmp/mysql-slow.sql
sudo systemctl daemon-reload && sudo systemctl restart mysql
'