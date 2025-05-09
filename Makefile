all: completions configs

CWD := $(shell pwd)

# completions
completions: tree-sitter
tree-sitter:
	@tree-sitter complete --shell fish > $(HOME)/.config/fish/completions/tree-sitter.fish

# configs
CONFIGS := $(shell find .config -type f -not -name .DS_Store)
configs:
	@for FILE in $(CONFIGS); do \
		rm -f $(HOME)/$$FILE; \
	    mkdir -p $(HOME)/`dirname $$FILE`; \
		cp $(CWD)/$$FILE $(HOME)/$$FILE; \
	done
