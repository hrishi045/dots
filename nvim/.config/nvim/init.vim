set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
"set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=2	" Number of spaces per Tab
set expandtab

set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'

call plug#end()

autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd BufNewFile,BufRead *.asm set filetype=nasm

if (has("termguicolors"))
  set termguicolors
endif

syntax on
let g:onedark_color_overrides = {
  \ "black": {"gui": "#0f0f0f", "cterm": "0", "cterm16": "0" },
  \}

colorscheme onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

set relativenumber
set nocursorline
set guicursor=

set background=dark

set noshowmode

