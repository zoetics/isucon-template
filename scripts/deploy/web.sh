#!/bin/bash -eu

sudo su -l isucon -c '
BASE_DIR=/home/isucon/webapp

### code fetch ###
cd ${BASE_DIR}; git pull;

### daemon reload ###
sudo rm -f /var/log/nginx/access.log /var/log/nginx/error.log
sudo systemctl daemon-reload && sudo systemctl restart nginx
'