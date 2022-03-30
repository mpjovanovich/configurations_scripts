"" Python macros
let @c=':s/^/## /'
let @u=':s/## //'
let @y='"+y'

"" Use system clipboard
set clipboard=unnamedplus  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

"" Use line cursor for insert mode and block cursor everywhere else
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
let &t_ti.="\<Esc>[1 q"
let &t_SI.="\<Esc>[5 q"
let &t_EI.="\<Esc>[1 q"
let &t_te.="\<Esc>[0 q"

"" Some of the above settings influence the below, so run these last
behave xterm
syntax on
set backspace=indent,eol,start
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set clipboard=unnamed
set number
