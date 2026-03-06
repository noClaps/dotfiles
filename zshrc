# CLI tools
alias ls='ls -Ap1 --color'
alias mkdir='mkdir -p'
alias wcurl='curl --progress-bar --remote-name-all --fail --show-error --location --continue-at -'

preexec() {
    start_time=$SECONDS
}
precmd() {
    elapsed=$((SECONDS - start_time))
    if [[ elapsed -gt 0 ]]; then
        export RPS1="[took $((SECONDS-start_time))s]"
    else
        unset RPS1
    fi
}

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go
export PATH="$HOME/go/bin:$PATH"

autoload -Uz compinit
compinit
