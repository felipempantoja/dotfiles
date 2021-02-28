" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

  " eye candy
  Plug 'vim-airline/vim-airline'
  Plug 'enricobacis/vim-airline-clock' " for showing time on the airline status bar
  Plug 'lambdalisue/battery.vim' " for showing battery percentage on the status bar
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'psliwka/vim-smoothie' " Smooth scrolling
  Plug 'ryanoasis/vim-devicons' " icons for coc explorer and others
  Plug 'kien/rainbow_parentheses.vim' " for colorizing parentheses
  Plug 'junegunn/limelight.vim' " Hyperfocus-writing
  Plug 'RRethy/vim-illuminate' " highlighting other uses of the word under the cursor
  Plug 'machakann/vim-highlightedyank' " highlight copied text

  " navigation
  Plug 'easymotion/vim-easymotion' " navigate to words/lines/letters fastly (<leader><leader>w + hit highlight target letter)
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy finder
  Plug 'junegunn/fzf.vim' " fuzzy finder

  " editing
  Plug 'junegunn/goyo.vim' " zen mode
  Plug 'mbbill/undotree' " undo time travel
  Plug 'tpope/vim-commentary' " comment stuff out
  Plug 'tpope/vim-surround' " for surrondings (parenthesis, brackets, quotes, tags, and more)
  Plug 'tpope/vim-repeat' " fixes vim-surround plugin when repeating command '.' (dot)
  Plug 'tpope/vim-abolish' " word substitution/abbreviation
  Plug 'brooth/far.vim' " find and replace plugin
  Plug 'wellle/targets.vim' " additional text objects
  " Plug 'honza/vim-snippets' " self-explanatory
  Plug 'editorconfig/editorconfig-vim'

  " ruby / rails
  Plug 'tpope/vim-endwise' " self-explanatory
  Plug 'vim-ruby/vim-ruby' " syntax highlighting, indentation, omnicompletion, and various useful tools and mapping
  Plug 'tpope/vim-rake', { 'for': 'ruby' }
  Plug 'tpope/vim-rails' " self-explanatory

  " Frontend
  Plug 'leafgarland/typescript-vim' " will do all the coloring for typescript keyword
  Plug 'peitalin/vim-jsx-typescript' " will do all the coloring for jsx in the .tsx files
  " Plug 'mattn/emmet-vim' " self-explanatory
  Plug 'alvan/vim-closetag' " self-explanatory

  " git integration
  Plug 'tpope/vim-fugitive' " for git utilities
  Plug 'junegunn/gv.vim' " more git utilities
  Plug 'airblade/vim-gitgutter' " shows a git diff in the sign column
  Plug 'tpope/vim-unimpaired' " pairs of handy bracket mappings

  " language tools
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Stable version of coc
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " Keeping up to date with master
  Plug 'w0rp/ale' " async lint engine (only for ruby usage since my coc config is not linting ruby files properly)
  Plug 'janko-m/vim-test' " for running tests

  " general
  Plug 'mhinz/vim-startify' " start screen and session handler
  Plug 'liuchengxu/vim-which-key' " a keymapping help panel
  Plug 'voldikss/vim-floaterm' " builtin terminal in a popup window
  Plug 'airblade/vim-rooter' " Changes Vim working directory to project root
  Plug 'moll/vim-bbye' " allows you to do delete buffers (close files) without closing your windows or messing up your layout
  Plug 'francoiscabrol/ranger.vim' " Ranger Explorer integration
  Plug 'rbgrouleff/bclose.vim' " Ranger plugin dependency
  Plug 'tmux-plugins/vim-tmux-focus-events' " Make terminal vim and tmux work better together
  Plug 'thinca/vim-localrc' " vim configuration per project/folder

  " evaluation
  " Plug 'norcalli/nvim-colorizer.lua'
  " Plug 'Asheq/close-buffers.vim' " allows deleting buffer but one and more
  " Plug 'Yggdroot/indentLine' " for displaying thin vertical lines at each indentation level for code (json view conflicts)
  " Plug 'puremourning/vimspector' " multi language graphical debugger
  " Plug 'terryma/vim-expand-region' " visually select increasingly larger regions of text
  " Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  " Plug 'hashivim/vim-terraform'
  " Plug 'tpope/vim-bundler', { 'for': 'ruby' }
  " Plug 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
  " Plug 'APZelos/blamer.nvim' " shows the last commit user at the cursor line
  " Plug 'mhinz/neovim-remote'
  " Plug 'arithran/vim-delete-hidden-buffers' " deletes all buffers except the current one
  " Plug 'nvim-treesitter/nvim-treesitter' " only works on nvim 0.5.0+ which is not released yet

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
