#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# neovim
ln -s ${BASEDIR}/neovim/init.vim ~/.config/nvim/init.vim

ln -s ${BASEDIR}/neovim/fsharp.vim ~/.config/nvim/fsharp.vim
ln -s ${BASEDIR}/neovim/coc.vim ~/.config/nvim/coc.vim

# coc LSP plugin for neovim
ln -s ${BASEDIR}/neovim/coc/coc-settings.json ~/.config/nvim/coc-settings.json
