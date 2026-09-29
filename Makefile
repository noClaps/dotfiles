all: zsh git zed oxide

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

oxide:
	@echo "oxide"
	@mkdir -p "${HOME}/.config/oxide"
	@ln -snf "${PWD}/config/oxide/config.toml" "${HOME}/.config/oxide/config.toml"
