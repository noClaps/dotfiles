all: zsh git zed nvim

zsh:
	@echo "zsh"
	@ln -snf "${PWD}/zshrc" "${HOME}/.zshrc"

git:
	@echo "git"
	@mkdir -p "${HOME}/.config/git"
	@ln -snf "${PWD}/config/git/config" "${HOME}/.config/git/config"
	@ln -snf "${PWD}/config/git/ignore" "${HOME}/.config/git/ignore"

zed:
	@echo "zed"
	@mkdir -p "${HOME}/.config/zed"
	@ln -snf "${PWD}/config/zed/settings.json" "${HOME}/.config/zed/settings.json"

nvim:
	@echo "nvim"
	@ln -snf "${PWD}/config/nvim" "${HOME}/.config"
