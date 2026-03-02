all: zsh git zed ghostty flow

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

ghostty:
	@echo "ghostty"
	@ln -snf "${PWD}/config/ghostty" "${HOME}/.config"

flow:
	@echo "flow"
	@mkdir -p "${HOME}/.config/flow"
	@ln -snf "${PWD}/config/flow/config" "${HOME}/.config/flow/config"