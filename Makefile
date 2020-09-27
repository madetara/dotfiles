install: vim-plug nvim-config nvim-plugins font ssr

vim-plug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim-config:
	mkdir -p ~/.config/nvim
	ln -sf $(CURDIR)/neovim/plugins.vim ~/.config/nvim/plugins.vim
	ln -sf $(CURDIR)/neovim/init.vim ~/.config/nvim/init.vim
	ln -sf $(CURDIR)/neovim/fsharp.vim ~/.config/nvim/fsharp.vim
	ln -sf $(CURDIR)/neovim/coc.vim ~/.config/nvim/coc.vim
	ln -sf $(CURDIR)/neovim/coc/coc-settings.json ~/.config/nvim/coc-settings.json

nvim-plugins:
	nvim +:PlugInstall +:UpdateRemotePlugins +qall

# Installs JetBrains Mono font
font:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

# Sets up system clipboard for WSL usage
wsl-clip:
	apt-get install xclip
	echo "LOCAL_IP=$(ipconfig.exe | awk 'BEGIN { RS="\r\n" } /^[A-Z]/ { isWslSection=/WSL/; }; { if (!isWslSection && /IPv4 Address/) { printf $NF; exit; }}')\nexport DISPLAY=$LOCAL_IP:0" >> ~/.profile

# Installs silver searcher
ssr:
	apt-get install silversearcher-ag
