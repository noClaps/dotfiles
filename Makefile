all: zsh git nvim

zsh:
	@echo "zsh"
	@ln -snf "${PWD}/zshrc" "${HOME}/.zshrc"

git:
	@echo "git"
	@ln -snf "${PWD}/config/git" "${HOME}/.config"

nvim:
	@echo "nvim"
	@ln -snf "${PWD}/config/nvim" "${HOME}/.config"
