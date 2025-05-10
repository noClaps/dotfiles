all: completions configs

CWD := $(shell pwd)

# completions
completions: setup-completions tree-sitter
setup-completions:
	@mkdir -p $(HOME)/.local/share/zsh/site-functions
tree-sitter:
	@tree-sitter complete --shell zsh > $(HOME)/.local/share/zsh/site-functions/_tree-sitter

# configs
configs:
	@cp $(CWD)/.zshrc $(HOME)/.zshrc
	@cp $(CWD)/.gitattributes $(HOME)/.gitattributes
	@cp $(CWD)/.gitconfig $(HOME)/.gitconfig
