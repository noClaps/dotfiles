# CLI tools
alias ls='ls -A1 --color'
alias mkdir='mkdir -p'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# binaries
export PATH="$HOME/.local/bin:$PATH"

# rust
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"

autoload -Uz compinit
compinit
