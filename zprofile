export SHELL_SESSIONS_DISABLE=1
export LESSHISTFILE=-

zstyle ':completion::complete:*' cache-path "$HOME/.cache/zsh/zcompcache"

# CLI tools
alias ls='ls -Ap1 --color'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

autoload -Uz compinit
compinit -d $HOME/.cache/zsh/zcompdump

# local binaries
export PATH="$HOME/.local/bin:$PATH"
