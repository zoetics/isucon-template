#!/bin/bash -eu

## 並列でデプロイする

# server1
cat deploy/app.sh | ssh isucon-server1 &
# server2
cat deploy/web.sh | ssh isucon-server2 &
# server3
cat deploy/database.sh | ssh isucon-server3 &

wait