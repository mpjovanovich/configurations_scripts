execute pathogen#infect()

"" Python macros
let @c=':s/^/## /'
let @u=':s/## //'
let @y='"+y'

"" Use system clipboard
set clipboard=unnamedplus  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

"" Some of the above settings influence the below, so run these last
behave xterm
syntax on
set backspace=indent,eol,start
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set clipboard=unnamed
set background=dark
set term=screen-256color
colorscheme gruvbox
set number
