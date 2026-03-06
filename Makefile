all: zsh git ghostty nvim

zsh:
	@echo "zsh"
	@ln -snf "${PWD}/zshrc" "${HOME}/.zshrc"

git:
	@echo "git"
	@ln -snf "${PWD}/config/git" "${HOME}/.config"

ghostty:
	@echo "ghostty"
	@ln -snf "${PWD}/config/ghostty" "${HOME}/.config"

nvim:
	@echo "nvim"
	@ln -snf "${PWD}/config/nvim" "${HOME}/.config"
