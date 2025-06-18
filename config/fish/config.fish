if status is-interactive
    set -U fish_greeting

    # CLI tools
    alias ls='ls -Ap1 --color'

    eval "$(/opt/homebrew/bin/brew shellenv)"
end
