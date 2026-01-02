all: zsh git jj zed

zsh:
	@echo "zsh"
	@ln -snf "${PWD}/zshrc" "${HOME}/.zshrc"

git:
	@echo "git"
	@ln -snf "${PWD}/config/git/ignore" "${HOME}/.config/git/ignore"

jj:
	@echo "jj"
	@ln -snf "${PWD}/config/jj/config.toml" "${HOME}/.config/jj/config.toml"

zed:
	@echo "zed"
	@ln -snf "${PWD}/config/zed/settings.json" "${HOME}/.config/zed/settings.json"
