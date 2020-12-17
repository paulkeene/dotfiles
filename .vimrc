set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdcommenter'
Plug 'qpkorr/vim-bufkill'
Plug 'ap/vim-css-color'
Plug 'pangloss/vim-javascript'
Plug 'vim-ruby/vim-ruby'
Plug 'dyng/ctrlsf.vim'
Plug 'RRethy/vim-illuminate'
Plug 'pechorin/any-jump.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-sensible'
Plug 'rhysd/git-messenger.vim'

" Color schemes
Plug 'cocopon/iceberg.vim'

call plug#end()

let mapleader = ","

" ignore modelines (vim configuration included in source files)
set nomodeline
filetype plugin on

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
set incsearch
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

" clean up UI in gvim
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

let g:localvimrc_sandbox = 0

set shell=/bin/zsh

" let CtrlSF searches contain regular expressions
let g:ctrlsf_regex_pattern = 1

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:show_spaces_that_precede_tabs=1
