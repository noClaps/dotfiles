eval "$(/opt/homebrew/bin/brew shellenv)"

alias ls="ls -Ap1 --color"
alias lg="lazygit"

autoload -Uz compinit
compinit
