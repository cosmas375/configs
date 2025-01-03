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
alias grep='grep --color=auto'

#git
source /home/cosmas375/.config/git/.bashrc

# flutter
export PATH="$PATH:`pwd`/Development/flutter/flutter/bin"
export PATH="$PATH:`pwd`/Development/flutter/android-studio/jbr/bin"
export JAVA_HOME="/home/cosmas375/Development/flutter/android-studio/jbr"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# mc
alias mc='EDITOR=nvim mc'
