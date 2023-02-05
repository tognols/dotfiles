installer: SHELL:=/bin/bash
installer:
	@git submodule update --init --recursive
	@echo "Successfully cloned submodules"
	@cp -r .local ~
	@echo "copied .local to ~"
	@cp -r kitty ~/.config
	@echo "copied kitty to ~/.config"
	@cp -r hyprland/.config/hypr/* ~/.config/hypr
	@echo "copied hyprland to ~/.config/hypr"
	@cp -r helix ~/.config
	@echo "copied helix to ~/.config"
	@cp -r nvchad.custom ~/.config/nvim/lua/custom
	@echo "copied nvchad.custom to ~/.config/nvim/lua/custom"

fonts:
	@curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/NerdFontsSymbolsOnly.zip > NerdFontsSymbolsOnly.zip
	@unzip NerdFontsSymbolsOnly.zip -d ~/.fonts/
	@fc-cache -fv
	@rm NerdFontsSymbolsOnly.zip
	@echo "Succesfully installed Nerd Fonts symbols"

all: installer fonts
	@echo "Everything done"
