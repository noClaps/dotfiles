# CLI tools
alias ls='ls -Ap1 --color'
alias mkdir='mkdir -p'
alias wcurl='curl --progress-bar --remote-name-all --fail --show-error --location --continue-at -'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go
export PATH="$HOME/go/bin:$PATH"

autoload -Uz compinit
compinit
