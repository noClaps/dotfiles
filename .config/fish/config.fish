if status is-interactive
    # CLI tools
    alias ls="ls -Ap1 --color"
    alias rm="rm -rf"
    alias diff="diff --color=always"
    alias cc="clang -Wall -Wextra -Werror"

    eval $(/opt/homebrew/bin/brew shellenv)
end
