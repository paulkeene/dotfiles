call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdcommenter'

" Color schemes
Plug 'cocopon/iceberg.vim'

call plug#end()

set nocompatible

let mapleader = ","

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
    colorscheme iceberg
else
    colorscheme wombat256
endif

set ignorecase
set smartcase
set hlsearch
noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" fzf
nmap ; :FZF<CR>

" indentation
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType haskell setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType purescript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType ruby setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType nginx setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2

" strip trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,haskell,html,javascript, autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

autocmd BufNewFile,BufRead *.go set filetype=go

autocmd BufRead,BufNewFile *.go setlocal noexpandtab

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" clean up UI in gvim
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

let g:localvimrc_sandbox = 0

set shell=/bin/zsh
