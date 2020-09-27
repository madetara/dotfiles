syntax enable
filetype plugin indent on

set encoding=utf-8
set nocompatible

" Disabling backups
set nobackup
set nowritebackup

" Indent settings
set tabstop=4
set shiftwidth=4
set expandtab

" Relative line numbering
set relativenumber

set guifont=JetBrains\ Mono

" Text wrap options
set wrap linebreak nolist
set textwidth=80

" Cursor line highlighting
set cursorline

" Leader key setting
nnoremap <Space> <nop>
let mapleader=" "

" Clear search
map <silent> <Leader>cs :let @/ = ""<CR>

" FZF buffer switch
map <Leader>b :Buffers<CR>

" FZF files search
map <Leader>f :Files<CR>

" Buffer close
map <Leader>d :bd<CR>

" Better search
set ignorecase
set smartcase

" Three lines scrolling
set scrolloff=3

set background=dark
set termguicolors

" Load plugins
source ~/.config/nvim/plugins.vim

" Color scheme config
colo iceberg
let g:airline_powerline_fonts = 1
let g:airline_theme = 'iceberg'

" Setting netrw to tree view
let g:netrw_liststyle = 3

" Make netrw take only 25% of screen space
let g:netrw_winsize = 25

" Always show signcolumn
set signcolumn=yes

" Language server config
set hidden

set cmdheight=2

set updatetime=500

set shortmess+=c

" Loads coc key-bindings for chosen filetypes
augroup coc
    autocmd!
    autocmd FileType rust,python,haskell,go source ~/.config/nvim/coc.vim
augroup END

augroup FSharp
    autocmd!
    autocmd FileType fsharp source ~/.config/nvim/fsharp.vim
augroup END

augroup make
    autocmd!
    " makefile only works with tabs
    autocmd FileType make set expandtab&
augroup END

augroup yml
    autocmd!
    autocmd FileType yaml set tabstop=2
    autocmd FileType yaml set shiftwidth=2
augroup END
