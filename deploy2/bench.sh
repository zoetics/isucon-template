#!/bin/bash -eu

cd /home/isucon/ && ISUXBENCH_TARGET=127.0.0.1 ./bin/benchmarker --stage=prod --request-timeout=10s --initialize-request-timeout=60s
