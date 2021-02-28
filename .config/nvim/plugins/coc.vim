let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-actions',
    \ 'coc-lists',
    \ 'coc-emmet',
    \ 'coc-pairs',
    \ 'coc-tasks',
    \ 'coc-tslint-plugin',
    \ 'coc-tsserver',
    \ 'coc-floaterm',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-emoji',
    \ 'coc-yaml',
    \ 'coc-explorer',
    \ 'coc-svg',
    \ 'coc-vimlsp',
    \ 'coc-xml',
    \ 'coc-yank',
    \ 'coc-json',
    \ 'coc-marketplace',
    \ 'coc-solargraph',
    \ 'coc-highlight',
    \ 'coc-styled-components',
    \ ]
    " \ 'coc-tabnine',
    " \ 'coc-sh',
    " \ 'coc-import-cost'
    " \ 'coc-cssmodules',
    " \ 'coc-python',
    " \ 'coc-pyright',

" Adds coc-prettier only if project has prettier package within
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Adds coc-eslint only if project has prettier package within
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

if isdirectory('./target') || isdirectory('./gradle')
  let g:coc_global_extensions += ['coc-java', 'coc-java-debug']
endif

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <Plug>CustomCocCR pumvisible() && complete_info()["selected"] != "-1" ? coc#_select_confirm() : "\<C-g>u\<CR>"
  " inoremap <expr> <Plug>CustomCocCR pumvisible() && complete_info()["selected"] != "-1" ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>do <Plug>(coc-codeaction)
nmap <silent>go <Plug>(coc-codelens-action)
nmap <silent><leader>ac :execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent>[g <Plug>(coc-diagnostic-prev)
nmap <silent>]g <Plug>(coc-diagnostic-next)
nnoremap <silent><leader>D :<C-u>CocList diagnostics<cr>

" Yank list
nnoremap <silent><leader>y :<C-u>CocList -A --normal yank<cr>

" Use K to show documentation in preview window.
nnoremap <leader>K :call <SID>show_documentation()<CR>

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" coc-explorer (https://github.com/weirongxu/coc-explorer)
nmap <leader>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" helper functions

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction

let g:EditorConfig_core_mode = 'external_command'

" replace the codelens color for something less code-like
hi CocCodeLens guifg=#494737
