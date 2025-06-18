if status is-interactive
    set -g fish_private_mode true
    set -g fish_history
    function fish_greeting
    end

    # CLI tools
    alias ls='ls -Ap1 --color'

    eval "$(/opt/homebrew/bin/brew shellenv)"
end
