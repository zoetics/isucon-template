#!/bin/bash -eu

# ログインシェルをbashに
chsh -s /bin/bash
sudo chsh -s /bin/bash

# 必須なやつ
sudo apt install -y vim git

# デフォルトのエディタをvimに変更
sudo update-alternatives --set editor /usr/bin/vim.basic

# ユーザ追加
. add_users.sh

# dotfiles
mkdir ~/bin/;
cd ~/bin/; wget https://raw.github.com/git/git/master/contrib/completion/git-completion.bash & \
wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh & wait; cd ~;
cp dotfiles/$(wildcard .??*) ~/

# MySQLのバックアップを取得
mysqldump -uroot --all-databases > /tmp/mysql.dump