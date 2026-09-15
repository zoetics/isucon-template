#!/bin/bash -aeux

SCRIPT_DIR=$(cd $(dirname $0); pwd)

pscp -h ./ssh/hosts -l ubuntu -r ${SCRIPT_DIR}/ubuntu/ /home/
pssh -h ./ssh/hosts -l ubuntu -P -I<./init/init.sh
#pssh -h ./ssh/hosts -l ubuntu -P -I<./scratch.sh
