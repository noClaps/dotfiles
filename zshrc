export HISTFILE=/dev/null

eval "$(/opt/homebrew/bin/brew shellenv)"

alias ls="ls -Ap1 --color"

autoload -Uz compinit
compinit
