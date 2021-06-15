#!/bin/bash

function plugin() {
    URLBASE="${1}"
    DIR="${2}"

    if [[ ! -e "${DIR}" ]];
    then
        echo "pulling ${DIR}"
        git clone "${URLBASE}"/"${DIR}"
    else
        echo "updating ${DIR}"
        ( cd "${DIR}" && git pull )
    fi
}

mkdir -p pack/auto/start/

cd pack/auto/start/

plugin https://github.com/jamessan vim-gnupg
plugin https://github.com/preservim nerdtree
plugin https://github.com/rust-lang rust.vim
plugin https://github.com/fatih vim-go
plugin https://github.com/vimwiki vimwiki

