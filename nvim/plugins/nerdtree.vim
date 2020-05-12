" NERDTree
map <F4> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" WebDev Icons fixes for NERDTree
" with ~/.dotfiles/config/nvim/after/syntax/nerdtree.vim
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
augroup nerdtreeconcealbrackets
	autocmd!
	autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
	autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
	autocmd FileType nerdtree setlocal conceallevel=3
	autocmd FileType nerdtree setlocal concealcursor=nvic
augroup END
" END of WebDev Icons fixes for NERDTree
