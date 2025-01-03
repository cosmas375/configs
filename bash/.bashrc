#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# cosmas375
alias ls='ls -la --color=auto'

alias grep='grep --color=auto'

# nvim
source /home/cosmas375/.config/nvim/.bashrc

# git
source /home/cosmas375/.config/git/.bashrc

# mc
source /home/cosmas375/.config/mc/.bashrc

# oclint
source /home/cosmas375/.config/oclint/.bashrc

# nvm
source /home/cosmas375/.config/nvm/.bashrc

# flutter
source /home/cosmas375/.config/flutter/.bashrc

# code
source /home/cosmas375/.config/code/.bashrc
