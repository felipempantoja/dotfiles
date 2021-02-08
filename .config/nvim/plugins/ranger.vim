" Disable default key mapping (<leader>f) for opening ranger
let g:ranger_map_keys = 0

" override netrw
let g:ranger_replace_netrw = 1

" override default ranger command for showing hidden files
let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'

map <leader>f :Ranger<CR>
