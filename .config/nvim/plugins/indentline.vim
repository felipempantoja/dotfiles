" disable indentLine on CoCExplorer buffer
autocmd! User CocExplorerOpenPre IndentLinesDisable 
" let g:indentLine_fileTypeExclude = ['coc-explorer']

let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" not working well with json file types
let g:indentLine_fileTypeExclude = ['json']

" workaround for json view conflict (only works on insert mode)
" let g:vim_json_conceal = 0
" let g:indentLine_concealcursor = 'nc'
