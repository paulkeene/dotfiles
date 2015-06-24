execute pathogen#infect()

set nocompatible

set hidden
set nu

set guifont=PragmataPro:h14

syntax enable
set background=dark
colorscheme solarized

set hlsearch
noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

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

" strip trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,haskell,html,javascript autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
