set backupdir=~/.vim/tmpfiles/
set dir=~/.vim/tmpfiles/

set tabstop=4 shiftwidth=4 expandtab
set cindent autoindent smartindent

" http://got-ravings.blogspot.ca/2008/08/vim-pr0n-making-statuslines-that-own.html
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

let mapleader=";"
map <Leader>j vey0/"
map <Leader>h vey0/\<"\>

" http://vim.wikia.com/wiki/Keep_your_cursor_centered_vertically_on_the_screen
" set scrolloff=5

au BufRead,BufNewFile */commitmsg set textwidth=72

colorscheme slate

" paste same thing multiple times
xnoremap p pgvy

syn on
set number

" for pathogen
execute pathogen#infect()

" for vimwiki
set nocompatible
filetype plugin on

let g:vimwiki_list = [{'path':'~/.vimwiki/wiki', 'path_html':'~/.vimwiki/export/html/'}]

