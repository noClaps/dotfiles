export SHELL_SESSIONS_DISABLE=1
export LESSHISTFILE=-

zstyle ':completion::complete:*' cache-path "$HOME/.cache/zsh/zcompcache"

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
compinit -d $HOME/.cache/zsh/zcompdump

export HISTFILE=/dev/null
export PS1="%1~ %# "
