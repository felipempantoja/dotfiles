" disable indentLine on CoCExplorer buffer
augroup disableOnCocExplorer
  autocmd!
  autocmd User CocExplorerOpenPre LeadingSpaceDisable
  autocmd User CocExplorerOpenPre IndentLinesDisable 
augroup END
autocmd disableOnCocExplorer * silent!

let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" not working well with json file types
let g:indentLine_fileTypeExclude = ['json']
