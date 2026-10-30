# .bashrc
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# ctrl+s で出力がロックされてしまうのを防ぐ
stty stop undef

# history にコマンド実行時刻を記録する
HISTTIMEFORMAT='[%Y-%m-%d %T] '

# linux
# bash_completion
if [ -f /etc/profile.d/bash_completion.sh ]; then
    source /etc/profile.d/bash_completion.sh
fi
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

alias ls='ls -CF'
alias ll='ls -AlFh --show-control-chars --color=auto'
alias la='ls -CFal'

# 共通
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'

torepo() {
  for f in "$@"; do
    case "$f" in /*) ;; *) echo "絶対パスで指定してください: $f" >&2; return 1;; esac
    if [ -L "$f" ]; then
      t=$(readlink -f "$f")
      case "$t" in "$PWD"/*) echo "スキップ（既にリポジトリへリンク済み）: $f" >&2; continue;; esac
      echo "リンク先の実体を処理します: $f -> $t" >&2
      f=$t
    fi
    cp --parents -v "$f" . && sudo mv -v "$f" "$f.bk" && sudo ln -sv "$PWD$f" "$f" || return 1
  done
}

# torepo /etc/systemd/system/isuride-php.service /home/isucon/local/php/etc/isuride.php-fpm.conf \
#     /etc/mysql/mysql.conf.d/mysqld.cnf /etc/mysql/mysql.conf.d/mysql.cnf \
#     /home/isucon/env.sh \
#     /etc/nginx/nginx.conf /etc/nginx/sites-enabled/isuride.conf /etc/nginx/sites-enabled/isuride-php.conf
