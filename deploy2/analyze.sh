#!/bin/bash -eu

cat /var/log/nginx/access.log | ../kataribe -f ../kataribe.toml

sudo mysqldumpslow -s t /var/log/mysql/mysql-slow.log
