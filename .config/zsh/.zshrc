# PATH
export PATH="$HOME/.local/bin:$HOME/.bun/bin:$PATH"

# CLI tools
alias ls="ls -Ap1 --color"
alias rm="rm -rf"
alias diff="diff --color=always"

# plugins
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# completions
FPATH="$HOMEBREW_PREFIX/share/zsh/site-functions:$ZDOTDIR/site-functions:$FPATH"
autoload -Uz compinit
compinit

# bun completions
[ -s "/Users/user/.bun/_bun" ] && source "/Users/user/.bun/_bun"
