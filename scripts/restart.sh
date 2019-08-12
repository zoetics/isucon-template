#!/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)
## 並列でデプロイする

# server1
cat ${SCRIPT_DIR}/deploy/app.sh | ssh isucon-server1 &
# server2
cat ${SCRIPT_DIR}/deploy/web.sh | ssh isucon-server2 &
# server3
cat ${SCRIPT_DIR}/deploy/database.sh | ssh isucon-server3 &

wait