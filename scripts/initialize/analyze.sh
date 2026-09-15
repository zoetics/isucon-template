#!/bin/bash
# /home/isucon/bin/analyze.sh
set -u

KATARIBE=/opt/kataribe
KATARIBE_CONF=/opt/kataribe.toml
OUT=/home/isucon/logs
NGINX_LOG=/var/log/nginx/access.log
SLOW_LOG=/var/log/mysql/mysql-slow.log

mkdir -p "${OUT}"
STAMP=$(date +%Y%m%d-%H%M%S)

sleep 65

# kataribe
cat "${NGINX_LOG}" | "${KATARIBE}" -f "${KATARIBE_CONF}" \
  > "${OUT}/kataribe-${STAMP}.txt" 2>&1

# mysqldumpslow
#    -s at : Queryの平均実行時間
#    -s c  : Queryの出現回数
#    -s ar : Query内で取得/更新した合計レコード行数
#    -s t  : Queryの合計実行時間
sudo mysqldumpslow -s t "${SLOW_LOG}" \
  > "${OUT}/slowquery-${STAMP}.txt" 2>&1

ln -sfn "${OUT}/kataribe-${STAMP}.txt"  "${OUT}/kataribe-latest.txt"
ln -sfn "${OUT}/slowquery-${STAMP}.txt" "${OUT}/slowquery-latest.txt"
