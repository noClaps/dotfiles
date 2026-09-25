all: zsh git oxide nvim

zsh:
	@echo "zsh"
	@ln -snf "${PWD}/zshrc" "${HOME}/.zshrc"

git:
	@echo "git"
	@mkdir -p "${HOME}/.config/git"
	@ln -snf "${PWD}/config/git/config" "${HOME}/.config/git/config"
	@ln -snf "${PWD}/config/git/ignore" "${HOME}/.config/git/ignore"

oxide:
	@echo "oxide"
	@mkdir -p "${HOME}/.config/oxide"
	@ln -snf "${PWD}/config/oxide/config.toml" "${HOME}/.config/oxide/config.toml"

nvim:
	@echo "nvim"
	@ln -snf "${PWD}/config/nvim" "${HOME}/.config"
