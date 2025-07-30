export SHELL_SESSIONS_DISABLE=1
export LESSHISTFILE=-

zstyle ':completion::complete:*' cache-path "$HOME/.cache/zsh/zcompcache"

eval "$(/opt/homebrew/bin/brew shellenv)"

# CLI tools
alias ls='ls -Ap1 --color'

# bun completions
[ -s "/Users/user/.bun/_bun" ] && source "/Users/user/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# fnm
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
  eval "`fnm env`"
fi

# go
export PATH="$HOME/go/bin:$PATH"

autoload -Uz compinit
compinit -d $HOME/.cache/zsh/zcompdump
