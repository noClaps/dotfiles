all: completions configs

CWD := $(shell pwd)

# completions
completions: setup-completions bun tree-sitter
setup-completions:
	@mkdir -p $(HOME)/.local/share/zsh/site-functions
bun:
	@bun completions > $(HOME)/.local/share/zsh/site-functions/_bun
tree-sitter:
	@tree-sitter complete --shell zsh > $(HOME)/.local/share/zsh/site-functions/_tree-sitter

# configs
CONFIGS := $(shell find .config -type f -not -name .DS_Store)
configs:
	@for FILE in $(CONFIGS); do \
		rm -f $(HOME)/$$FILE; \
	    mkdir -p $(HOME)/`dirname $$FILE`; \
		cp $(CWD)/$$FILE $(HOME)/$$FILE; \
	done
	@ln -sf $(CWD)/.zshrc $(HOME)/.zshrc
