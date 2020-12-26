if !exists('g:undotree_WindowLayout')
  let g:undotree_WindowLayout = 3
endif

" undotree window width
if !exists('g:undotree_SplitWidth')
  let g:undotree_SplitWidth = 50
endif

" if set, let undotree window get focus after being opened, otherwise
" focus will stay in current window.
if !exists('g:undotree_SetFocusWhenToggle')
    let g:undotree_SetFocusWhenToggle = 1
endif

" Highlight changed text using signs in the gutter
if !exists('g:undotree_HighlightChangedWithSign')
    let g:undotree_HighlightChangedWithSign = 1
endif

nnoremap <F6> :UndotreeToggle<CR>
