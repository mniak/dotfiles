call plug#begin()
Plug 'NLKNguyen/papercolor-theme'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set t_Co=256
set background=dark
colorscheme PaperColor
set encoding=UTF-8

filetype on
filetype plugin on
filetype indent on
set number         " set nu
set relativenumber " set rnu
set expandtab
set shiftwidth=4
set tabstop=4
set nobackup

let mapleader=","
exe 'source '.stdpath('config').'/init.go.vim'
exe 'source '.stdpath('config').'/init.nerdtree.vim'

:nnoremap <C-s> :w<CR>
:nnoremap <C-q> :qall<CR>
