" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
  "Plug 'preservim/nerdtree'
  "Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'vim-airline/vim-airline' 
  Plug 'vim-airline/vim-airline-themes' 
  "Plug 'ryanoasis/vim-devicons'
  " Color schemes
  "Plug 'joshdick/onedark.vim'
  Plug 'morhetz/gruvbox'
  " Development
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  "Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
  "Plug 'davidhalter/jedi-vim'
call plug#end()
