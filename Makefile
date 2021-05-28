install: install-zsh install-vim install-neovim install-tmux

install-neovim:
	rm -rf ~/.config/nvim
	ln -s `pwd`/nvim ~/.config/nvim
	ifeq (, $(shell which nvim))
		$(error "No lzop in $(PATH), consider doing apt-get install neovim")
	endif
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	nvim +PlugInstall +qall!

install-vim:
	rm -f ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-zsh:
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
	ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
	ln -sf ~/.dotfiles/zsh/zprofile ~/.zprofile

install-tmux:
	rm -f ~/.tmux.conf
	ln -s `pwd`/tmux/tmux.conf ~/.tmux.conf
