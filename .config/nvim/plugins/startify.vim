map <Home> :Startify<CR>

let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_files_number = 8
let g:webdevicons_enable_startify = 1

" automatically restart a session
let g:startify_session_autoload = 1
" always point to root folder so FZF finds files accordingly
let g:startify_change_to_vcs_root = 1
" disabling auto save session (only manually) (NOT WORKING)
let g:startify_session_persistence = 1
" Delete all buffers when loading or closing a session (NOT WORKING)
let g:startify_session_delete_buffers = 1
" Execute actions before saving a session
let g:startify_session_before_save = [
      \ 'echo "Cleaning up before saving.."',
      \ 'silent! bd! \[coc-explorer]'
      \ ]

" bookmarks
let g:startify_bookmarks = [
			\ { 'i': '~/.config/nvim/init.vim' },
			\ { 'z': '~/.zshrc' },
			\ { 'c': '~/.config' },
			\ { 'w': '~/workspace' },
			\ ]

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']                     },
      \ { 'type': 'files',     'header': ['   Files']                        },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
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
