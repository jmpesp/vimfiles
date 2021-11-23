set backup
set backupdir=~/.vim/tmpfiles/
set dir=~/.vim/tmpfiles/

filetype off

set tabstop=4 shiftwidth=4 expandtab
set cindent autoindent smartindent

" http://got-ravings.blogspot.ca/2008/08/vim-pr0n-making-statuslines-that-own.html
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

let mapleader=";"
map <leader>j vey0/"
map <leader>h vey0/\<"\>

" http://vim.wikia.com/wiki/Keep_your_cursor_centered_vertically_on_the_screen
" set scrolloff=5

au BufRead,BufNewFile */commitmsg.patch set textwidth=72
au BufRead,BufNewFile */.git/COMMIT_EDITMSG set textwidth=72

" paste same thing multiple times
xnoremap p pgvy

syn on
colors slate

"set number
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

let g:vimwiki_list = [wiki1]

" python specific
au BufRead,BufNewFile *.py set colorcolumn=80

" c/c++ specific
au BufRead,BufNewFile *.c set tabstop=2 shiftwidth=2 expandtab
au BufRead,BufNewFile *.cc set tabstop=2 shiftwidth=2 expandtab
au BufRead,BufNewFile *.cxx set tabstop=2 shiftwidth=2 expandtab
au BufRead,BufNewFile *.cpp set tabstop=2 shiftwidth=2 expandtab
au BufRead,BufNewFile *.h set tabstop=2 shiftwidth=2 expandtab
au BufRead,BufNewFile *.hh set tabstop=2 shiftwidth=2 expandtab
au BufRead,BufNewFile *.hxx set tabstop=2 shiftwidth=2 expandtab
au BufRead,BufNewFile *.hpp set tabstop=2 shiftwidth=2 expandtab

" do not auto-insert comments in c style language
autocmd BufNewFile,BufRead * setlocal formatoptions-=r

" Rust specific
au BufRead,BufNewFile *.rs set textwidth=80 colorcolumn=80

" debian
set mouse=

" format json
map <leader>J :%!jq .

" clang-format
map <leader>cf :%!clang-format -style=Google

" terraform fmt
map <leader>tf :%!terraform fmt -

" write buffer to clipboard
map <leader>C :w !xclip -in

" NERDTree
map <C-n> :NERDTreeToggle<CR>
map <leader>N :NERDTreeFocus<CR>

" golint binding for :Lint
set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim

" only read .gpg files with plugin
let g:GPGFilePattern = '*.gpg'

" rust.vim options
let g:rustfmt_autosave = 1

" autopep8
map <leader>p8 :%!autopep8 -

" shellcheck
au BufRead,BufNewFile *.sh :set makeprg=shellcheck\ -f\ gcc\ %
au BufRead,BufNewFile *.bash :set makeprg=shellcheck\ -f\ gcc\ %

" reformat lines: gq

" c++filt
map <leader>cppf :%!c++filt 

let g:rustfmt_autosave = 0

" patch with contents of yank
" or: :%!patch -p1
"map <leader>P :call system("patch -p1", getreg(""))
map <leader>P :%!patch -p1

" sessions!
" :mksession ~/mysession.vim
" vim -S ~/mysession.vim

