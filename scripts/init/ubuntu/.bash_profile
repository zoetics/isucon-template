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
