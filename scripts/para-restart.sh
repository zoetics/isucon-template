#!/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)
## 並列でデプロイする

# server1
cat ${SCRIPT_DIR}/deploy/app.sh ${SCRIPT_DIR}/deploy/web.sh ${SCRIPT_DIR}/deploy/database.sh | ssh isucon-1 &
# server2
cat ${SCRIPT_DIR}/deploy/app.sh | ssh isucon-2 &
# cat ${SCRIPT_DIR}/deploy/web.sh | ssh isucon-2 &
# # server3
# cat ${SCRIPT_DIR}/deploy/database.sh | ssh isucon-3 &

wait
