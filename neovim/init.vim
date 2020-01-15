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

set guifont=Fura\ Code\ NF

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

" Vim-plug plugins
call plug#begin()

" Vim status line plugins
Plug 'vim-airline/vim-airline'

" Iceberg color scheme
Plug 'cocopon/iceberg.vim'

" tmux status bar generator
Plug 'edkolev/tmuxline.vim'

" Netrw extension
Plug 'tpope/vim-vinegar'

" Autocomments plugin
Plug 'tpope/vim-commentary'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'

" Coc language server
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Obsolete language server
" Completion framework
Plug 'Shougo/deoplete.nvim', { 'for': 'fsharp', 'do': ':UpdateRemotePlugins' }

" LSP
Plug 'autozimu/LanguageClient-neovim', {
    \ 'for': 'fsharp',
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" F# plugin for LSP
Plug 'ionide/Ionide-vim', { 'for': 'fsharp', 'do': 'make fsautocomplete' }

Plug 'Shougo/echodoc.vim'

call plug#end()

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
    autocmd FileType rust,python,haskell source ~/.config/nvim/coc.vim
augroup END

augroup FSharp
    autocmd!
    autocmd FileType fsharp source ~/.config/nvim/fsharp.vim
augroup END
