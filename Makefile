# ------------------------------------------------------------
# dotfiles
# ------------------------------------------------------------


.DEFAULT_GOAL  = install


.PHONY: install
install: install-config install-zshrc


.PHONY: install-config
install-config:
	ln -sf $(CURDIR)/root/.config/* ~/.config


.PHONY: install-zshrc
install-zshrc:
	ln -sf $(CURDIR)/root/.config/zsh/zshrc ~/.zshrc


.PHONY: tree
tree: root
	@tree -L 4 -a $<
