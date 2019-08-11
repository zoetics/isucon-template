#!/bin/bash -eu

sudo su - isucon;
BASE_DIR=/home/isucon/webapp

### code fetch ###
cd ${BASE_DIR}; git pull;

### daemon reload ###
sudo rm -f /tmp/mysql-slow.sql
sudo systemctl restart mysql