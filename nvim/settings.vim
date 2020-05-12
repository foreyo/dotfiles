syntax enable                           " Enables syntax highlighing
set encoding=UTF-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set t_Co=256                            " Enable 256 colors support
set clipboard=unnamedplus               " Access system clipboard
set mouse=a                             " Enable your mouse
set number                              " Line numbers
set ruler                               " Show the cursor position
set cursorline                          " Enable highlighting of the current line
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc

if has('termguicolors')
"  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors                    " Enable true colors 
endif

colorscheme gruvbox
set background=dark                     " Setting dark mode
