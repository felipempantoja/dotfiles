" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
  
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Stable version of coc
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " Keeping up to date with master

  Plug 'mhinz/vim-startify' " start screen and session handler

  " eye candy
  Plug 'vim-airline/vim-airline'
  Plug 'christianchiarulli/nvcode.vim'
  Plug 'psliwka/vim-smoothie'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'RRethy/vim-illuminate' " highlighting other uses of the word under the cursor
  Plug 'Yggdroot/indentLine' " for displaying thin vertical lines at each indentation level for code (json view conflicts)

  " navigation
  Plug 'easymotion/vim-easymotion' " navigate to words/lines/letters fastly (<leader><leader>w + hit highlight target letter)
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " editing
  Plug 'cohama/lexima.vim'
  Plug 'honza/vim-snippets' " for creating snippets
  Plug 'mattn/emmet-vim'
  Plug 'junegunn/goyo.vim' " zen mode
  Plug 'mbbill/undotree' " undo time travel
  Plug 'tpope/vim-commentary'
  Plug 'puremourning/vimspector' " multi language graphical debugger
  Plug 'terryma/vim-expand-region' " visually select increasingly larger regions of text
  Plug 'alvan/vim-closetag'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " ruby / rails
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rake', { 'for': 'ruby' }
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-bundler', { 'for': 'ruby' }
  Plug 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
  " Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby'] } " text object that removes an (entire/enclosing) ruby block (cir/dir/car/dar)
  
  " Frontend
  Plug 'leafgarland/typescript-vim' " will do all the coloring for typescript keyword
  Plug 'peitalin/vim-jsx-typescript' " will do all the coloring for jsx in the .tsx files

  " git integration
  Plug 'tpope/vim-fugitive' " for git utilities
  Plug 'junegunn/gv.vim' " more git utilities
  Plug 'airblade/vim-gitgutter' " shows a git diff in the sign column
  Plug 'APZelos/blamer.nvim'
  
  " language tools
  Plug 'w0rp/ale' " async lint engine
  Plug 'janko-m/vim-test' " for running tests

  " general
  Plug 'tpope/vim-surround' " for surrondings (parenthesis, brackets, quotes, tags, and more)
  Plug 'tpope/vim-repeat' " fixes vim-surround plugin when repeating command '.' (dot)
  Plug 'tpope/vim-abolish' " word substitution/abbreviation
  Plug 'liuchengxu/vim-which-key' " a keymapping help panel
  Plug 'voldikss/vim-floaterm' " builtin terminal in a popup window

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
