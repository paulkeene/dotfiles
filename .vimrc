execute pathogen#infect()

set nocompatible

" ignore modelines (vim configuration included in source files)
set nomodeline

set hidden
set nu

set guifont=PragmataPro:h14

syntax enable

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme wombat256
endif

set ignorecase
set smartcase
set hlsearch
noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" ctrlp
let g:ctrlp_map = ';'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|tmp$\|env$\|node_modules$\|bower_components$\|dist$\|vendor$',
    \ 'file': '\.exe$\|\.so$\|\.swp$\|\.pyc$\|\.zip$'
    \ }

" indentation
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType css setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType jinja setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType haskell setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType purescript setlocal shiftwidth=2 tabstop=2 softtabstop=2
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

autocmd FileType c,cpp,java,php,ruby,python,haskell,html,javascript,jinja autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" default to jinja syntax highlighting for html templates
autocmd BufNewFile,BufRead *.html set filetype=jinja

"autocmd BufRead,BufNewFile *.html,*.jsx,*.js setlocal noexpandtab

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
let g:syntastic_python_checkers = ['flake8']

" clean up UI in gvim
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

let g:localvimrc_sandbox = 0
