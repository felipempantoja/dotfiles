nnoremap <Leader>q :Bdelete<CR>
map <Leader>qa :bufdo Bwipeout<CR>

command! BufOnly execute '%bdelete|edit #|normal `"'
map <Leader>qb :BufOnly<CR>
