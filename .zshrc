export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias root='su - root'
alias update='sudo pacman -Syu'
alias pyenv='python -m venv venv/ && source venv/bin/activate'
alias pserver='sudo python -m http.server 80'
