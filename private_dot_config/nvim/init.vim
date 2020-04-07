call plug#begin()
Plug 'NLKNguyen/papercolor-theme'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set t_Co=256
set background=dark
colorscheme PaperColor

filetype on
filetype plugin on
filetype indent on
set nu

let mapleader=","
exe 'source '.stdpath('config').'/init.go.vim'
