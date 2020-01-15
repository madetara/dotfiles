" Disabling coc language server
CocDisable

"Language client hotkeys
nnoremap <silent> <Leader>ld :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <Leader>lr :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
nnoremap <silent> <Leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
nnoremap <silent> <Leader>lx :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> <Leader>la :call LanguageClient_workspace_applyEdit()<CR>
nnoremap <silent> <Leader>lc :call LanguageClient#textDocument_completion()<CR>
nnoremap <silent> <Leader>lh :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <Leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> <Leader>lm :call LanguageClient_contextMenu()<CR>

" Initializing workspace
nnoremap <silent> <Leader>r :FSharpLoadWorkspaceAuto<CR>

autocmd CursorHold *.fs,*.fsi,*.fsx call fsharp#showTooltip()

let g:fsharp#workspace_peek_deep_level = 4
let g:fsharp#automatic_workspace_init = 1

let b:coc_suggest_disable = 1

" Initializing completion plugin
call deoplete#enable()
call deoplete#initialize()

set cmdheight=2
let g:echodoc#type = 'signature'
call echodoc#enable()
