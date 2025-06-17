fc -p # creates a private session, won't save any history

eval "$(/opt/homebrew/bin/brew shellenv)"

alias ls="ls -Ap1 --color"

autoload -Uz compinit
compinit
