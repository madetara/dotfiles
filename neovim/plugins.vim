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
