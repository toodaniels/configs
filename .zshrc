export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="af-magic"
ZSH_THEME="nanotech"
#ZSH_THEME="fletcherm"
#ZSH_THEME="gallois"
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

#PROMPT='$(git_custom_status)%{$fg[cyan]%}[%1d% ]%{$reset_color%}%B$%b '
 #PS1='$(git_custom_status)% [%1d] $ '
#PROMPT=${PROMPT/\%c/\%~}

export GIT_EDITOR=vim

alias root='su - root'
alias update='sudo pacman -Syu'
alias pyenv='python -m venv venv/ && source venv/bin/activate'
alias pserver='sudo python -m http.server 80'
alias status='git status -s'
alias gitlog='git log --oneline'
alias dallow='sudo chmod 666 /var/run/docker.sock'
alias v='vim'
