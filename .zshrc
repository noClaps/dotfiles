# PATH
export PATH="/opt/homebrew/opt/rustup/bin:$HOME/.local/bin:$PATH"

# CLI tools
alias ls="ls -Ap1 --color"
alias rm="rm -rf"
alias diff="diff --color=always"

autoload -Uz compinit
compinit
