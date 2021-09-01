.PHONY : brew zsh git hammerspoon sdkman

DOTFILES_DIR := $(shell pwd)

all: .PHONY

brew:
	chmod +x $(DOTFILES_DIR)/scripts/brew.sh
	$(DOTFILES_DIR)/scripts/brew.sh

zsh:
	chmod +x $(DOTFILES_DIR)/scripts/zsh.sh
	$(DOTFILES_DIR)/scripts/zsh.sh

git:
	chmod +x $(DOTFILES_DIR)/scripts/git.sh
	$(DOTFILES_DIR)/scripts/git.sh

hammerspoon:
	chmod +x $(DOTFILES_DIR)/scripts/hammerspoon.sh
	$(DOTFILES_DIR)/scripts/hammerspoon.sh

sdkman:
	chmod +x $(DOTFILES_DIR)/scripts/sdkman.sh
	$(DOTFILES_DIR)/scripts/sdkman.sh
