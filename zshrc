# CLI tools
alias ls='ls -Ap1 --color'
alias mkdir='mkdir -p'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# go
export PATH="$HOME/go/bin:$PATH"

autoload -Uz compinit
compinit
