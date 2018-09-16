#!/bin/bash -eu

# yum install -y zip curl git

# kataribe
curl -L -O https://github.com/matsuu/kataribe/releases/download/v0.3.3/linux_amd64.zip
unzip linux_amd64.zip

# dstat
yum install -y dstat
