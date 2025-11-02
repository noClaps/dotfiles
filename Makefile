install: zsh git jj zed other

zsh:
	ln -snf $(PWD)/zshrc $(HOME)/.zshrc
	ln -snf $(PWD)/zprofile $(HOME)/.zprofile

git:
	ln -snf $(PWD)/config/git/attributes $(HOME)/.config/git/attributes
	ln -snf $(PWD)/config/git/config $(HOME)/.config/git/config
	ln -snf $(PWD)/config/git/ignore $(HOME)/.config/git/ignore

jj:
	ln -snf $(PWD)/config/jj/config.toml $(HOME)/.config/jj/config.toml

zed:
	ln -snf $(PWD)/config/zed/settings.json $(HOME)/.config/zed/settings.json

other:
	ln -snf $(PWD)/hushlogin $(HOME)/.hushlogin
