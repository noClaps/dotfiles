# CLI tools
alias ls='ls -Ap1 --color'
alias mkdir='mkdir -p'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# path
export PATH="$HOME/.local/bin:$PATH"

autoload -Uz compinit
compinit
