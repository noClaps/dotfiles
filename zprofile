export SHELL_SESSIONS_DISABLE=1
export LESSHISTFILE=-

zstyle ':completion::complete:*' cache-path "$HOME/.cache/zsh/zcompcache"

# CLI tools
alias ls='ls -Ap1 --color'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

autoload -Uz compinit
compinit -d $HOME/.cache/zsh/zcompdump

# rust
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# local binaries
export PATH="$HOME/.local/bin:$PATH"
