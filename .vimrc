execute pathogen#infect()

set nocompatible

set hidden

set guifont=PragmataPro:h14

syntax enable
set background=dark
colorscheme solarized

" ctrlp
let g:ctrlp_map = ';'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*/env/*,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 0

" indentation
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType haskell setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType ruby setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType nginx setlocal shiftwidth=4 tabstop=4 softtabstop=4
