source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/plugins/coc.vim

"let g:python_host_prog='~/.pyenv/shims/python'

let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
let g:airline#extensions#hunks#enabled=0

" ncm2 settings
"autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=menuone,noselect,noinsert
"set shortmess+=c
"inoremap <c-c> <ESC>
" make it fast
"let ncm2#popup_delay = 5
"let ncm2#complete_length = [[1, 1]]
" Use new fuzzy based matches
"let g:ncm2#matcher = 'substrfuzzy'

" Pymode
let g:pymode_run=1
let g:pymode_run_bind='<F5>'


