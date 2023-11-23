#!/bin/bash -eu

## ログインシェルをbashに
chsh -s /bin/bash
sudo chsh -s /bin/bash

# 必須なやつ
sudo apt update
sudo apt install -y vim git unzip golang dstat htop graphviz

# デフォルトのエディタをvimに変更
sudo update-alternatives --set editor /usr/bin/vim.basic

# MySQLのバックアップを取得
mysqldump -uroot --all-databases > /tmp/mysql.dump

# install kataribe
cd /tmp && curl -L -O https://github.com/matsuu/kataribe/releases/download/v0.3.3/linux_amd64.zip && unzip linux_amd64.zip

# pprofのWeb GUIに必要なやつ
go get -u github.com/google/pprof

# netdata
sudo sed -i s/127\.0\.0\.1/0\.0\.0\.0/ /etc/netdata/netdata.conf
sudo systemctl restart netdata

# dotfiles
sudo cp ~/.gitconfig /home/isucon/.gitconfig
sudo cp ~/.bash_profile /home/isucon/.bash_profile
sudo mkdir -p -m 700 /home/isucon/.ssh
sudo chown isucon:isucon /home/isucon/.ssh
sudo cp ~/.ssh/id_rsa /home/isucon/.ssh/id_rsa
sudo chown isucon:isucon /home/isucon/.gitconfig /home/isucon/.bash_profile /home/isucon/.ssh/id_rsa