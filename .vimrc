"" STUFF I FORGET ALOT:
"" Regex: https://vimregex.com/
""     See 'Anchors'
"" To add special chars in vimrc use Ctrl-q in insert mode instead of Ctrl-v.
"" To paste into command bar: Ctrl-r, "
"" Wrap multiline comments via 'gw' (wrap)
"" Unwrap via 'J' (join)

"" Get rid of annoying delay after hitting certain keys, like Esc.
set timeoutlen=1000
set ttimeoutlen=5

"" Probabaly worth remaping keys to launch these macros.
"" Python code comment macros
autocmd!

autocmd filetype python let @c=':s/^/# /e'
autocmd filetype python let @u=':s/^# //e'

autocmd filetype c,javascript,typescript,text let @c=':s~^~// ~e'
autocmd filetype c,javascript,typescript,text let @u=':s~^// ~~e'
"" not sure, but text covers all other filetypes

"" HTML close a tag macro
let @h='bbvf>yf>pbi/h'

"" Get rid of annoying delay after hitting certain keys, like Esc.
set timeoutlen=1000
set ttimeoutlen=5

"" Move viewport up a few lines
nnoremap <S-j> 5<C-e>
"" Move viewport down a few lines
nnoremap <S-k> 5<C-y>

"" Actually delete stuff
nnoremap d "_d
vnoremap d "_d

"" Don't bring up a help screen when I fatfinger and hit F1 instead of ESC
nmap <F1> <nop>

"" Set the text wrap width
set tw=79

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
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set clipboard=unnamed
set number
set visualbell
set t_vb=
set ff=unix

"" Windows - WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
