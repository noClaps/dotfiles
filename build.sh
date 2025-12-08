zsh() {
    echo "zsh"
    ln -snf "$PWD/zshrc" "$HOME/.zshrc"
}

git() {
    echo "git"
	ln -snf "$PWD/config/git/ignore" "$HOME/.config/git/ignore"
}

jj() {
    echo "jj"
    ln -snf "$PWD/config/jj/config.toml" "$HOME/.config/jj/config.toml"
}

zed() {
    echo "zed"
    ln -snf "$PWD/config/zed/settings.json" "$HOME/.config/zed/settings.json"
	ln -snf "$PWD/config/zed/themes/zerolimits.json" "$HOME/.config/zed/themes/zerolimits.json"
}

case $@ in
    zsh) zsh ;;
    git) git ;;
    jj) jj ;;
    zed) zed ;;
    *)
        zsh
        git
        jj
        zed
        ;;
esac
