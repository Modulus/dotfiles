filetype plugin indent on
syntax on
set term=xterm-256color

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml "foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set number
