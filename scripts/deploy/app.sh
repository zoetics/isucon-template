#!/bin/bash -eu

sudo su - isucon;
BASE_DIR=/home/isucon/webapp

### code fetch ###
cd ${BASE_DIR}; git pull;

### code build ###
cd ${BASE_DIR}/go; sh build.sh;

### daemon reload ###
sudo systemctl restart isucon.go.service;
