autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" automatically set any ruby spec buffers to ruby filetype (somehow vim is not doing this by itself)
au BufRead,BufNewFile *_spec.rb set filetype=ruby

" make vim see js(x) buffers as javascript.jsx file types
autocmd BufNewFile,BufRead *.js set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx

" open these files using external programs
au BufReadCmd *.docx,*.xlsx,xls.*,*.pptx,*.pdf,*.png,*.jpg
      \ call system("xdg-open " . expand("%:p")) | buffer# | bdelete# | redraw! | syntax on
