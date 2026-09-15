#!/bin/bash
# /home/isucon/bin/reset-logs.sh
set -u

STAMP=$(date +%Y%m%d-%H%M%S)

# nginx
mv /var/log/nginx/access.log /var/log/nginx/access.log.${STAMP} 2>/dev/null || true
nginx -s reopen

# MySQL slow query log
mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow.log.${STAMP} 2>/dev/null || true
mysqladmin flush-logs --defaults-file=/home/isucon/.my.cnf 2>/dev/null || true
