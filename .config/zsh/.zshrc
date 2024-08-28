# PATH
export PATH="$HOME/.local/bin:$HOME/.bun/bin:$PATH"

# CLI tools
alias ls="ls -Ap1 --color"
alias rm="rm -rf"

# plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# completions
if type brew &>/dev/null
then
  FPATH="/opt/homebrew/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
