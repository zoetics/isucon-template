#!/bin/bash -eu

# ログインシェルをbashに
chsh -s /bin/bash
sudo chsh -s /bin/bash

# 必須なやつ
sudo apt install -y vim git htop

# デフォルトのエディタをvimに変更
sudo update-alternatives --set editor /usr/bin/vim.basic

# ユーザ追加
. add_users.sh

# MySQLのバックアップを取得
mysqldump -uroot --all-databases > /tmp/mysql.dump