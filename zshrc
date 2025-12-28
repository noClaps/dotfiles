# CLI tools
alias ls='ls -Ap1 --color'
alias mkdir='mkdir -p'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# rust
export PATH="$HOMEBREW_PREFIX/opt/rustup/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# go
export PATH="$HOME/go/bin:$PATH"

autoload -Uz compinit
compinit
