export SHELL_SESSIONS_DISABLE=1
export LESSHISTFILE=-

zstyle ':completion::complete:*' cache-path "$HOME/.cache/zsh/zcompcache"

eval "$(/opt/homebrew/bin/brew shellenv)"

# CLI tools
alias ls='ls -Ap1 --color'

autoload -Uz compinit
compinit -d $HOME/.cache/zsh/zcompdump
