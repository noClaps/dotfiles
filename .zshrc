# PATH
export PATH="/opt/homebrew/opt/rustup/bin:$HOME/.local/bin:$PATH"
export FPATH="$HOME/.local/share/zsh/site-functions:$FPATH"

# CLI tools
alias ls="ls -Ap1 --color"
alias rm="rm -rf"
alias diff="diff --color=always"
alias cc="clang -Wall -Wextra -Werror"
alias ubi="ubi -i $HOME/.local/bin -p"

function random() {
    case $1 in
        "-c")
            ran=$(jot -r 1 0 1)
            if [ $ran -eq 0 ]; then
                echo "Heads"
            else
                echo "Tails"
            fi ;;

        "-i")
            ran=$(jot -r 1 ${2:-0} ${3:-1})
            echo $ran ;;

        *)
            ran=$(jot -r -p 8 1 ${1:-0} ${2:-1})
            echo $ran ;;
    esac

}

eval "$(/opt/homebrew/bin/brew shellenv)"

autoload -Uz compinit
compinit
