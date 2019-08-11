#!/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)
. $SCRIPT_DIR/backup.sh /etc/nginx/nginx.conf
