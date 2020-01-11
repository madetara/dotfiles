syntax enable
filetype plugin indent on

set encoding=utf-8
set nocompatible

" Relative line numbering
set relativenumber

set guifont=Fura\ Code\ NF

set wrap linebreak nolist
set textwidth=80

set cursorline

" Leader key setting
nnoremap <Space> <nop>
let mapleader=" "

" Clear search
map <Leader>cs :let @/ = ""<CR>

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

" Autocompletion framework
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Language Server Protocol
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Better selection UI
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'

" F# Language server
Plug 'ionide/Ionide-vim', { 'do': 'make fsautocomplete' }

" Function singatures plugin
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

" Enabling Autocompletion
let g:deoplete#enable_at_startup = 1

" Echodoc config
set cmdheight=2
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

" Always show signcolumn
set signcolumn=yes

set updatetime=2000

" Language server config
set hidden

let g:LanguageClient_serverCommands = {}


function SetLSPShortcuts()
  nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
  nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
  nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
  nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
  nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
  nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
  nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
  nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
  nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
  nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction()

" Only enables LSP mappings for following files
augroup LSP
  autocmd!
  autocmd FileType cpp,c,fsharp call SetLSPShortcuts()
augroup END

" F# hover tooltip
if has('nvim') && exists('*nvim_open_win')
  augroup FSharpShowTooltip
    autocmd!
    autocmd CursorHold *.fs,*.fsi,*.fsx call fsharp#showTooltip()
  augroup END
endif

" F# LSP things
let g:fsharp#workspace_peek_deep_level = 4
let g:fsharp#automatic_workspace_init = 1
