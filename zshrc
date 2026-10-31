# CLI tools
alias ls='ls -A1 --color'
alias mkdir='mkdir -p'
alias cc='cc -std=c23 -Wall -Wextra -Wpedantic -Wformat -Werror'

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
    (( counter = 0 ))
    local echobu() {
        if [ $counter -gt 0 ]; then echo; fi
        (( counter = counter + 1 ))
        echo -e "\e[1;4m$*\e[0m"
    }

    echobu "Updating Homebrew packages"
    brew update && brew upgrade
    echobu "Updating uv Python version"
    uv python upgrade
    echobu "Updating uv tools"
    uv tool upgrade --all
    echobu "Updating pnpm global packages"
    pnpm update -g
    echobu "Updating Neovim with bob"
    bob update --all
}

autoload -Uz compinit
compinit
