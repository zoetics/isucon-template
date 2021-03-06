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
# git
alias g='git'
# docker-compose
alias fig=docker-compose
# screen
export SCREENDIR=~/.screens
alias sc=screen
alias scx='sc -U -x'
alias scr='sc -R'
alias scs='sc -U -S'
alias scl='sc -list'
alias scw='sc -wipe'
# tmux
alias tm='tmux'
# xargs
alias xs='xargs'

#########################################
# PS1
#########################################
# git-completion.bash / git-prompt.sh
#
if [ -f ~/bin/git-completion.bash ]; then
    source ~/bin/git-completion.bash
fi
if [ -f ~/bin/git-prompt.sh ]; then
    source ~/bin/git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# PS1 setting
#color mapping
unset -v _color_map
#_color_map=(${_color_map[*]} 0)   # black
_color_map=(${_color_map[*]} 1)   # red
_color_map=(${_color_map[*]} 2)   # green
_color_map=(${_color_map[*]} 3)   # yellow
_color_map=(${_color_map[*]} 4)   # blue
_color_map=(${_color_map[*]} 5)   # magenta
_color_map=(${_color_map[*]} 6)   # cyan
_color_map=(${_color_map[*]} 7)   # white

# Coloring hostname and username
_cl_host_index=$(/usr/bin/python -c 'print hash("'$HOSTNAME'") % '${#_color_map[*]}'')
_cl_user_index=$(/usr/bin/python -c 'print hash("'$USER'") % '${#_color_map[*]}'')

# color setting
_colored_host=$(echo -e "\e[03${_color_map[${_cl_host_index}]}m\H\e[m")
_colored_user=$(echo -e "\e[03${_color_map[${_cl_user_index}]}m\u\e[m")

# prompt setting
PS1="\[[\t] ${_colored_user}@${_colored_host}:\[\033[35m\]\w\[\033[00m\]\]"'$(__git_ps1)\n$ '