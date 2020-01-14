#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# neovim
ln -s ${BASEDIR}/neovim/init.vim ~/.config/nvim/init.vim

# coc LSP plugin for neovim
ln -s ${BASEDIR}/neovim/coc/coc-settings.json ~/.config/nvim/coc-settings.json
