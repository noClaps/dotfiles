# CLI tools
alias ls='ls -Ap1 --color'
alias mkdir='mkdir -p'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

autoload -Uz compinit
compinit
