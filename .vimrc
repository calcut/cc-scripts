" Largely based on
" https://gist.github.com/simonista/8703722

" Don't try to be vi compatible
set nocompatible

set mouse=a
set clipboard=unnamed

"Mode Settings
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:
"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" leader key
let mapleader = " "

" jj for escape
inoremap jj <Esc>

" Show line numbers
set number
set relativenumber
 
" Dont flash or bing on errors 
set visualbell t_vb=

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Allow use of Enter and Delete in Normal Mode 
nmap <CR> i<CR><Esc>
nmap <BS> i<BS><Esc>l
nmap <Del> i<Del><Esc>l

" Color scheme (terminal)
"set t_Co=256
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
colorscheme solarized

"colorscheme flattened_dark

" Whitespace
set wrap
set textwidth=0
"set textwidth=79 " Not used, can be annoying
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Security - don't load VIM commands from text files
set modelines=0

" Highlight syntax
syntax enable

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
"nnoremap / /\v
"vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader>n :let @/=''<cr> " clear search

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> " Toggle tabs and EOL
map <leader>m :set number!<CR>:set relativenumber!<CR> " Toggle line numbers

