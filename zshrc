# CLI tools
alias ls='ls -A1 --color'
alias mkdir='mkdir -p'

# env
export EDITOR='nvim'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# rust
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"

# local
export PATH="$HOME/.local/bin:$PATH"

autoload -Uz compinit
compinit
