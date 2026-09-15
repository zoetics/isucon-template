#!/bin/bash -eu

REPO=you/repo

pssh -h ./ssh/hosts.txt -i -t 300 -x '-A' \
  "git clone --no-checkout -b main git@github.com:${REPO}.git /tmp/repo && mv /tmp/repo/.git /home/isucon/webapp/.git && rm -rf /tmp/repo && cd /home/isucon/webapp && git status --porcelain"
