export SHELL_SESSIONS_DISABLE=1
export LESSHISTFILE=-

zstyle ':completion::complete:*' cache-path "$HOME/.cache/zsh/zcompcache"

# CLI tools
alias ls='ls -Ap1 --color'

# go
export PATH="$HOME/go/bin:$PATH"

# pkg
export PKG_HOME="/Users/user/.pkg"
export PATH="$PKG_HOME/bin:$PATH"
export FPATH="$PKG_HOME/share/zsh/site-functions:$FPATH"

autoload -Uz compinit
compinit -d $HOME/.cache/zsh/zcompdump

# bun completions
[ -s "/Users/user/.bun/_bun" ] && source "/Users/user/.bun/_bun"
