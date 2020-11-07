" automatically enable limelight when goyo starts
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" there's a bug when we leave zen mode which disables rainbow_parentheses,
" I'm still trying to figure out...

let g:limelight_default_coefficient = 0.7
