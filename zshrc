# CLI tools
alias ls='ls -A1 --color'
alias mkdir='mkdir -p'
alias cc='cc -std=c23 -Wall -Wextra -Wpedantic -Wformat -Werror'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# path
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# pnpm
export PNPM_HOME='/Users/user/Library/pnpm'
case ":$PATH:" in
  ":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

autoload -Uz compinit
compinit
