set number
set title
set hlsearch
set showmatch

set tabstop=8
set softtabstop=4
set smarttab
set shiftwidth=4
set smartindent
set expandtab
set autoindent

set t_ut=

noremap <Space><CR> o<ESC>


"dein Scripts-----------------------------
if &compatible
    set nocompatible
endif

" Required
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

" Required
if dein#load_state('$HOME/.vim/dein')
    call dein#begin('$HOME/.vim/dein')

    " Let manage dein
    " Required
    call dein#add('$HOME/.vim/dein/repos/github.com/Shougo/dein.vim')
    " Color schema of molokai
    call dein#add('jacoborus/tender.vim')

    " Add or remove your plugins here:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')

    " You can specify revision/branch/tag.
    call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

    " Required
    call dein#end()
    call dein#save_state()
endif

" Required
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

colorscheme tender

" End dein Scripts-------------------------
