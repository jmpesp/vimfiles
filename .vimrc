set backupdir=~/.vim/tmpfiles/
set dir=~/.vim/tmpfiles/

filetype off

call pathogen#infect()
call pathogen#helptags()

set tabstop=4 shiftwidth=4 expandtab
set cindent autoindent smartindent

" http://got-ravings.blogspot.ca/2008/08/vim-pr0n-making-statuslines-that-own.html
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

let mapleader=";"
map <Leader>j vey0/"
map <Leader>h vey0/\<"\>

" http://vim.wikia.com/wiki/Keep_your_cursor_centered_vertically_on_the_screen
" set scrolloff=5

au BufRead,BufNewFile */commitmsg.patch set textwidth=72
au BufRead,BufNewFile */.git/COMMIT_EDITMSG set textwidth=72

" paste same thing multiple times
xnoremap p pgvy

syn on
colors slate

set number
set hls

let g:netrw_liststyle=3
map <leader>e :Explore<cr>

" for vimwiki
set nocompatible
filetype plugin on
syntax on
"let g:vimwiki_folding='list'

let wiki1 = {}
let wiki1.path = '~/.vimwiki/wiki/'
let wiki1.path_html = '~/.vimwiki/export/html/'

let wiki2 = {}
let wiki2.path = '~/vena/vimwiki/'
let wiki2.path_html = '~/vena/vimwiki/export/html/'

let g:vimwiki_list = [wiki1, wiki2]

" python specific
au BufRead,BufNewFile *.py set textwidth=80
au BufRead,BufNewFile *.py set colorcolumn=80

" do not auto-insert comments in c style language
autocmd BufNewFile,BufRead * setlocal formatoptions-=r
