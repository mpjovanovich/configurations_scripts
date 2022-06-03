"" STUFF I FORGOT ALOT
"" To paste into command bar: Ctrl-r, "

"" Python comment macros
let @c=':s/^/## /'
let @u=':s/## //'

"" Move viewport up a few lines
nnoremap <S-j> 5<C-e>
"" Move viewport down a few lines
nnoremap <S-k> 5<C-y>

"" Actually delete stuff
nnoremap d "_d
vnoremap d "_d

"" Use system clipboard
"" Make sure you have a version of vim with clipboard support. The below should show +clipboard:
"" vim --version | grep 'clipboard'
set clipboard=unnamedplus  " use the clipboards of vim and win
set go+=a               " Visual selection automatically copied to the clipboard
set paste               " Something to do with paste formatting

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

"" Windows - WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

