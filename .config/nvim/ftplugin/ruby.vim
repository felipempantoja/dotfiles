"" Set specific linters
let g:ale_linters = {
      \   'ruby': ['rubocop'],
      \}

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️ '

let g:ale_fixers = {
      \ 'ruby': ['remove_trailing_lines', 'trim_whitespace', 'rubocop'],
      \ }

let g:ale_ruby_rubocop_executable = 'bundle'

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

let g:ale_fix_on_save = 1

let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1


" visual configs

set colorcolumn=140
