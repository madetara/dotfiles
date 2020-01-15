" Use tab for completion trigger
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Use <C-Space> to trigger completion
inoremap <silent><expr> <C-Space> coc#refresh()

" Use <CR> to confirm completion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Go to definition
nmap <silent> <Leader>ld <Plug>(coc-definition)

" Go to type definition
nmap <silent> <Leader>lt <Plug>(coc-type-definition)

" Go to implementation
nmap <silent> <Leader>li <Plug>(coc-implementation)

" Find references
nmap <silent> <Leader>lx <Plug>(coc-references)

" Rename
nmap <silent> <Leader>lr <Plug>(coc-rename)

" Highlight symbol under cursor
autocmd CursorHold * silent call CocActionAsync('highlight')
