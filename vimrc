set nocompatible
filetype plugin indent on

call plug#begin()

Plug 'adimit/prolog.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'aklt/plantuml-syntax'
Plug 'majutsushi/tagbar'

call plug#end()

set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set hidden
set laststatus=2
set display=lastline
set showmode
set showcmd
set nobackup
set number
set incsearch
set ttyfast
set lazyredraw
set autoread
set ruler
set ignorecase
set smartcase

set guioptions-=r

set encoding=utf8

if has('gui_running')
    colorscheme solarized
    set background=dark

    set guifont=Deja\ Vu\ Sans\ Mono\ 11
    set guioptions-=T
    set guioptions-=m
    let g:airline_theme='solarized'
    let g:airline_solarized_bg='dark'
endif

let g:airline_powerline_fonts=1

let mapleader = ","

map <C-Enter> :NERDTreeToggle<CR>
map <Leader>e :NERDTreeToggle<CR>
map <C-Right> :bn<CR>
map <C-Left> :bp<CR>
map <C-V> "+gP<CR>
map <Leader><Leader> :w<CR>

set list
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

autocmd BufNewFile,BufRead *.pl   set syntax=prolog
