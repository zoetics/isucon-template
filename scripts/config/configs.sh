#!/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)
. $SCRIPT_DIR/backup.sh /etc/nginx/nginx.conf
. $SCRIPT_DIR/backup.sh /etc/my.cnf
. $SCRIPT_DIR/backup.sh /etc/systemd/system/isucon.go.service