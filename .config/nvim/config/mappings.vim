let mapleader=" "


" get ride of the addicted arrow keys
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

" too lazy for hitting esc button
inoremap jj <ESC>
inoremap JJ <ESC>

" shortcut for saving files
map <Leader>w :w<CR>

" reload vim configs
map <F5> :so $MYVIMRC<CR>

" clear highlight
map <Leader><Leader>h :set hlsearch!<CR>

" vertical bar resize
map <Leader>r8 :vertical resize 80<CR>
map <Leader>r12 :vertical resize 130<CR>
nnoremap <silent> <Leader>+ :exe " vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" regenerate CTAGS - https://github.com/universal-ctags/ctags
map <Leader>ct :silent !ctags -R --exclude="*min.js"<CR>

" open a new blank buffer
map <Leader>n :tabnew<cr>

" tab switch
map gt :bnext<CR>
map gT :bprevious<CR>

" shortening the shortcut for split buffer navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
