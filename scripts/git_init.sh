#!/bin/bash -eu

# use e.g.)
# ./git_clone.sh git@github.com:zoetics/isucon-template.git

cd /home/isucon/webapp
git init -b main
git remote add origin $1
git fetch origin main
git switch -c main --track origin/main
git add -A && git commit -m "add application code"
