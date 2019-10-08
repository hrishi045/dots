set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set autoindent	" Auto-indent new lines
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=2	" Number of spaces per Tab
set ruler	" Show row and column ruler information
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
set relativenumber
set nocursorline
set guicursor=
syntax on

if (has("termguicolors"))
  set termguicolors
endif

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'vimwiki/vimwiki'
Plug 'joshdick/onedark.vim'
Plug 'haya14busa/is.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'mattn/emmet-vim'

call plug#end()

" Themes
let g:onedark_color_overrides = {
  \ "black": {"gui": "#0f0f0f", "cterm": "0", "cterm16": "0" },
  \}
set background=dark
colorscheme onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" vim-asterisk
map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
map #  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)
map z*  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
map gz* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
map z#  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
map gz# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)
let g:asterisk#keeppos = 1

" Filetype associations
autocmd FileType json syntax match Comment +\/\/.\+$+ " Highlight comments in JSON files
autocmd BufNewFile,BufRead *.asm set filetype=nasm

