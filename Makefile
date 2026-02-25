all: zsh git zed

zsh:
	@echo "zsh"
	@ln -snf "${PWD}/zshrc" "${HOME}/.zshrc"

git:
	@echo "git"
	@ln -snf "${PWD}/config/git/config" "${HOME}/.config/git/config"
	@ln -snf "${PWD}/config/git/ignore" "${HOME}/.config/git/ignore"

zed:
	@echo "zed"
	@mkdir -p "${HOME}/.config/zed"
	@ln -snf "${PWD}/config/zed/settings.json" "${HOME}/.config/zed/settings.json"
