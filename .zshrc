eval "$(/opt/homebrew/bin/brew shellenv)"

# PATH
export PATH="$HOME/.local/bin:$HOME/.bun/bin:$PATH"

# CLI tools
alias ls="ls -Ap1 --color"
alias rm="rm -rf"
alias diff="diff --color=always"

# plugins
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# completions
FPATH="$HOMEBREW_PREFIX/share/zsh/site-functions:$HOME/.config/zsh/site-functions:$FPATH"
autoload -Uz compinit
compinit
