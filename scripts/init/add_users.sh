#!/bin/bash -eu

####################
# use example
# ./add_users.sh
####################

# ユーザ追加
for file in `\find ./users -maxdepth 1 -type f`; do
    sh $file
done
