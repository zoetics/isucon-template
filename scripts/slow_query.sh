#!/bin/bash

#    at Queryの平均実行時間
#    c Queryの出現回数
#    ar Query内で取得/更新した合計レコード行数
#    t Queryの合計実行時間

mysqldumpslow -s t /tmp/mysql-slow.sql