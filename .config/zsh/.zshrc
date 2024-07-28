# PATH
export PATH="$HOME/.local/bin:$HOME/.bun/bin:$PATH"

# CLI tools
alias ls="ls -Ap1 --color"
alias rm="rm -rf"
serve() {
    bunx serve $1
}

# plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# completions
if type brew &>/dev/null
then
  FPATH="/opt/homebrew/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# bun completions
[ -s "/Users/user/.bun/_bun" ] && source "/Users/user/.bun/_bun"
