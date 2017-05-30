" vimrc 2017/May/19 Kato
set nocompatible
" Do not show match {[( pair
let g:loaded_matchparen=1
syntax on
set encoding=utf8
set fileencoding=utf-8

set background=dark
"colorscheme jellybeans
"colorscheme twilight
colorscheme hybrid
"
set scrolloff=5
" set noswapfile
" set nowritebackup
" set nobackup
set backspace=indent,eol,start
set clipboard+=unnamed
set clipboard=unnamed
" show invisible character
" set list
" set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" set number
set ruler
set nostartofline
"
"set matchpairs& matchpairs+=<:>
"
"set showmatch
"set matchtime=1
set wrap
set textwidth=0
" set shiftround
set hidden
set switchbuf=useopen
set ignorecase
set smartcase
" set incsearch
" set hlsearch
set history=100

" for Python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
au BufNewFile *.py 0r ~/.pyheader

