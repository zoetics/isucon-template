#!/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

# ログインシェルをbashに
chsh -s /bin/bash
sudo chsh -s /bin/bash

# 必須なやつ
sudo apt install -y vim git unzip

# デフォルトのエディタをvimに変更
sudo update-alternatives --set editor /usr/bin/vim.basic

# ユーザ追加
sh ${SCRIPT_DIR}/add_users.sh

# dotfiles
mkdir -p ~/bin/;
cd ~/bin/; wget https://raw.github.com/git/git/master/contrib/completion/git-completion.bash & \
wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh & wait; cd ~;
cp ${SCRIPT_DIR}/dotfiles/.??* ~/
echo ". ~/.bashrc"

# MySQLのバックアップを取得
#mysqldump -uroot --all-databases > /tmp/mysql.dump