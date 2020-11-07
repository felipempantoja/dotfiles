"" Set specific linters
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️ '

let g:ale_fixers = {
\ 'typescript': ['eslint'], 
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['prettier', 'eslint'],
\ 'ruby': ['rubocop'],
\ 'css': ['prettier']
\ }

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1

" evaluate
" let g:ale_disable_lsp = 1
