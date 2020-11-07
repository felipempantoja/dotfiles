" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1

" Lower case finds upper & lower case but upper case only finds upper case
let g:EasyMotion_smartcase = 1

" Smartsign (type `3` and match `3`&`#`)
" let g:EasyMotion_use_smartsign_us = 1

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-sj)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
