# CLI tools
alias ls="ls -Ap1 --color"
alias rm="rm -rf"

eval "$(/opt/homebrew/bin/brew shellenv)"

autoload -Uz compinit
compinit
