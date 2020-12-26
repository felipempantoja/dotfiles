map <Home> :Startify<CR>

let g:startify_session_dir = '~/.config/nvim/session'

" automatically restart a session
let g:startify_session_autoload = 1

" always point to root folder so FZF finds files accordingly
let g:startify_change_to_vcs_root = 1

let g:startify_files_number = 7

" bookmarks
let g:startify_bookmarks = [
			\ { 'i': '~/.config/nvim/init.vim' },
			\ { 'z': '~/.zshrc' },
			\ { 'c': '~/.config' },
			\ { 'w': '~/workspace' },
			\ ]

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Files']                        },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']                     },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
      \ ]

" banner
let g:startify_custom_header = [
			\ '█████╗ ███╗   ███╗ ██████╗ ██████╗     ███████╗ █████╗ ████████╗██╗ ',
			\ '██╔══██╗████╗ ████║██╔═══██╗██╔══██╗    ██╔════╝██╔══██╗╚══██╔══╝██║',
			\ '███████║██╔████╔██║██║   ██║██████╔╝    █████╗  ███████║   ██║   ██║',
			\ '██╔══██║██║╚██╔╝██║██║   ██║██╔══██╗    ██╔══╝  ██╔══██║   ██║   ██║',
			\ '██║  ██║██║ ╚═╝ ██║╚██████╔╝██║  ██║    ██║     ██║  ██║   ██║   ██║',
			\ '╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚═╝',
			\]
