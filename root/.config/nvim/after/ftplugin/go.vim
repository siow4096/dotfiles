" Vim-go settings
" let g:go_gopls_staticcheck = 1
let g:go_doc_keywordprg_enabled = 0
let g:go_fmt_command = 'goimports'
let g:go_metalinter_autosave = 0
let g:go_metalinter_command ='gopls'
let g:go_metalinter_deadline = '20s'

" Syntastic checkers
let g:syntastic_go_checkers = ['go', 'govet', 'golint', 'golangci_lint']
