all: zsh git ghostty flow

zsh:
	@echo "zsh"
	@ln -snf "${PWD}/zshrc" "${HOME}/.zshrc"

git:
	@echo "git"
	@ln -snf "${PWD}/config/git/config" "${HOME}/.config/git/config"
	@ln -snf "${PWD}/config/git/ignore" "${HOME}/.config/git/ignore"

ghostty:
	@echo "ghostty"
	@ln -snf "${PWD}/config/ghostty" "${HOME}/.config"

flow:
	@echo "flow"
	@ln -snf "${PWD}/config/flow" "${HOME}/.config"