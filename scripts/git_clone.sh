#!/bin/bash -eu

# use e.g.)
# ./git_clone.sh git@github.com:zoetics/isucon-template.git

echo $1
git init
git remote add origin $1
git fetch origin
git merge origin/master