export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

eval "$(/opt/homebrew/bin/brew shellenv)"

ssh-add --apple-use-keychain ~/.ssh/id_ed25519
