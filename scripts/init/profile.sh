#!/bin/bash -eu

# install kataribe
cd /tmp && curl -L -O https://github.com/matsuu/kataribe/releases/download/v0.3.3/linux_amd64.zip && unzip linux_amd64.zip

# htop: サーバの負荷をCUIで見るやつ, dstat: 各種リソースのステータスを見るやつ, graphviz: pprofのWeb GUIに必要なやつ
sudo apt install -y htop dstat graphviz

# pprofのWeb GUIに必要なやつ
go get -u github.com/google/pprof
