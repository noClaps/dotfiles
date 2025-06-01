export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
export FPATH="$HOME/.local/share/zsh/site-functions:$FPATH"

eval "$(/opt/homebrew/bin/brew shellenv)"

alias ls="ls -Ap1 --color"

autoload -Uz compinit
compinit
