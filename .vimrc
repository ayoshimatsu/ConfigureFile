set number
set title

" [Search function]
"" Don't distiguish upper/lower case
set ignorecase
"" Distinguish upper case when upper case is mixed
set smartcase
"" Highlight words
set hlsearch
"" Enable incremental search
set incsearch

" [Tab and Indent]
set tabstop=8
"" Insert spaces when enter <tab>
set softtabstop=4
"" Insert spaces of shiftwidth when enter <tab> at BOL
set smarttab
"" Width of auto indent
set shiftwidth=4
"" Create indent automatically like C code (Need to set autoindent)
set smartindent
"" Don't convert spaces to <tab>
set expandtab
"" Keep indent of the previous line when breaking line
set autoindent

"" Hilight corresponding parenthesis
set showmatch


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
