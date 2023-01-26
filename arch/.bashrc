#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:`pwd`/development/flutter/bin"
export PATH="$PATH:`pwd`/development/android-studio/jbr/bin"
export PATH="$PATH:`pwd`/Telegram"
export JAVA_HOME="/root/development/android-studio/jbr"
export CMAKE_C_COMPILER="gcc"
export CMAKE_CXX_COMPILER="gcc"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias g='git'
alias vi='vim'
alias code='code --disable-gpu --no-sandbox'
alias ls='ls -la'

PS1='[\u@\h \W]\$ '
