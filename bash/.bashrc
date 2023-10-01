#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
PS1='[\u@\h \W]\$ '

# cosmas375
alias vi='nvim'
alias vim='nvim'
alias code='code --no-sandbox'
alias g='git'
alias grep='grep --color=auto'

# flutter
export PATH="$PATH:`pwd`/Development/flutter/flutter/bin"
export PATH="$PATH:`pwd`/Development/flutter/android-studio/jbr/bin"
export JAVA_HOME="/home/cosmas375/Development/flutter/android-studio/jbr"
