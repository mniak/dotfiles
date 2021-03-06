autocmd VimEnter * NERDTree | wincmd p
map <C-S-e> :NERDTreeFocus<CR>

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

"autocmd BufEnter * lcd %:p:h
