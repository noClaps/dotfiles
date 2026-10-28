# CLI tools
alias ls='ls -A1 --color'
alias mkdir='mkdir -p'

# env
export EDITOR='nvim'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# path
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
export PATH="$HOME/Library/Application Support/bob/nvim-bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# pnpm
export PNPM_HOME='/Users/user/Library/pnpm'
case ":$PATH:" in
  ":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

# functions
update() {
    brew update && brew upgrade
    echo "Updating uv Python version"
    uv python upgrade
    echo "Updating uv tools"
    uv tool upgrade --all
    echo "Updating pnpm global packages"
    pnpm update -g
    echo "Updating Neovim with bob"
    bob update --all
}

autoload -Uz compinit
compinit
