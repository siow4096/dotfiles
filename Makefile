# ------------------------------------------------------------
# Installation
# ------------------------------------------------------------


.DEFAULT_GOAL = install


.PHONY: install
install: install-conf-zsh install-conf-vim install-conf-i3


# ------------------------------------------------------------
# zsh
# ------------------------------------------------------------


.PHONY: install-conf-zsh
install-conf-zsh: ~/.zshrc


~/.zshrc: zsh/zshrc
	ln -s $(abspath $<) $@


# ------------------------------------------------------------
# vim
# ------------------------------------------------------------


.PHONY: install-conf-vim
install-conf-vim: ~/.config/nvim


~/.config/nvim: vim/nvim
	mkdir -p $(dir $@)
	ln -s $(abspath $<) ~/.config


# ------------------------------------------------------------
# i3
# ------------------------------------------------------------


.PHONY: install-conf-i3
install-conf-i3: ~/.config/i3 ~/.config/i3blocks


~/.config/i3: i3/i3
	mkdir -p $(dir $@)
	ln -s $(abspath $<) ~/.config


~/.config/i3blocks: i3/i3blocks
	mkdir -p $(dir $@)
	ln -s $(abspath $<) ~/.config
