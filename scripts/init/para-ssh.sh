#!/bin/bash -aeux

SCRIPT_DIR=$(cd $(dirname $0); pwd)

pscp -h isucon-hosts -l ubuntu -r ${SCRIPT_DIR}/ubuntu/ /home/
pssh -h isucon-hosts -l ubuntu -P -I<./init.sh
#pssh -h isucon-hosts -l ubuntu -P -I<./scratch.sh