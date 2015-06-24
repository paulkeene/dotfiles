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
