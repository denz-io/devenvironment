set ai
set ci
set si
set ft=perl
syntax on
set bs=indent,eol,start
set bdir=~/.vim
set directory=~/.vim
set number
set nu
set termguicolors

set softtabstop=4
set shiftwidth=4
set expandtab

set hidden
set history=1000
set wildmenu
set wildmode=list:longest
runtime macros/matchit.vim
set ignorecase
set smartcase
set title
set hlsearch
set incsearch
set background=dark

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'crusoexia/vim-monokai'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <F2> :NERDTreeToggle<CR>

syntax on
colorscheme monokai
