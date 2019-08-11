#!/bin/bash

# dstat
dstat -lnpmcds

# htop
htop

# kataribe
cat /var/log/nginx/access.log | /tmp/kataribe -f /tmp/kataribe.toml

#    at Queryの平均実行時間
#    c Queryの出現回数
#    ar Query内で取得/更新した合計レコード行数
#    t Queryの合計実行時間
mysqldumpslow -s t /tmp/mysql-slow.sql

# pprof
go tool pprof -http=0.0.0.0:1080 /application/binaly/directory/ http://localhost:6060/debug/pprof/profile
# 取得結果から表示する場合(施策名をつけておくと良い)
go tool pprof -http=0.0.0.0:1080 /home/isucon/webapp/go/app /root/pprof/profile.pb.gz
