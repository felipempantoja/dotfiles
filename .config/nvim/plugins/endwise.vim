" disabling endwise mappings
let g:endwise_no_mappings = v:true

" to create my own and fix coc conflicts on completion
" only for ruby file types so we don't overuse coc#on_enter (which delays CR action)
au FileType * imap <CR> <Plug>CustomCocCR
au FileType ruby imap <CR> <Plug>CustomCocCR<Plug>DiscretionaryEnd
