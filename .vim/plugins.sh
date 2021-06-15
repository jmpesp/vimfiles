#!/bin/bash

mkdir -p pack/auto/start/

cd pack/auto/start/

if [[ ! -e vim-gnupg ]];
then
    git clone https://github.com/jamessan/vim-gnupg
fi

if [[ ! -e nerdtree ]];
then
    git clone https://github.com/preservim/nerdtree
fi

if [[ ! -e rust.vim ]];
then
    git clone https://github.com/rust-lang/rust.vim
fi

if [[ ! -e vim-go ]];
then
    git clone https://github.com/fatih/vim-go
fi

if [[ ! -e vimwiki ]];
then
    git clone https://github.com/vimwiki/vimwiki
fi

