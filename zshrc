# CLI tools
alias ls='ls -A1 --color'
alias mkdir='mkdir -p'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# rust
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

autoload -Uz compinit
compinit
