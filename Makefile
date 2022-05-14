dotfiles-install-node:
	cd ./nvim-config/ && make install-node

dotfiles-set-nvim:
	cd ./nvim-config/ && make set-nvim-config

dotfiles-set-fish:
	cd ./fish-config/ && make set-fish-config

dotfiles-install-starship-fonts:
	cd ./starship-config && make install-starship-fonts

dotfiles-set-starship:
	cd ./starship-config && make set-starship-config

dotfiles-set-tmux:
	cd ./tmux-config && make set-tmux-config

dotfiles-install-all:
	make dotfiles-install-node
	make dotfiles-install-starship-fonts

dotfiles-set-all:
	make dotfiles-set-fish
	make dotfiles-set-nvim
	make dotfiles-set-tmux

run-setup:
	make dotfiles-install-all
	make dotfiles-set-all
