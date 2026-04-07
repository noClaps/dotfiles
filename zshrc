# CLI tools
alias ls='ls -A1 --color'
alias mkdir='mkdir -p'
alias cc='cc -Wall -Werror'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go
export PATH="$HOME/go/bin:$PATH"

autoload -Uz compinit
compinit
