all: completions configs

CWD := $(shell pwd)

# completions
completions: setup-completions bun
setup-completions:
	@mkdir -p $(HOME)/.local/share/zsh/site-functions
bun:
	@bun completions > $(HOME)/.local/share/zsh/site-functions/_bun

# configs
CONFIGS := $(shell find .config -type f -not -name .DS_Store)
configs:
	@for FILE in $(CONFIGS); do \
	    mkdir -p $(HOME)/`dirname $$FILE`; \
		ln -sf $(CWD)/$$FILE $(HOME)/$$FILE; \
	done
	@ln -sf $(CWD)/.zshrc $(HOME)/.zshrc
