set ai
set ci
set si
syntax on
set ft=perl
set bs=indent,eol,start
set bdir=~/.vim
set directory=~/.vim
set number

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

execute pathogen#infect()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <F2> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set rtp+=~/.fzf
nmap <F3> :FZF<CR>

syntax enable
colorscheme monokai
