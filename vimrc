execute pathogen#infect()
syntax on
filetype plugin indent on
set background=dark
colorscheme solarized

let vimDir = '$HOME/.vim'
" " Keep undo history across sessions by storing it in a file
if has('persistent_undo')
   let myUndoDir = '/tmp/undodir'
  " Create dirs
   call system('mkdir ' . myUndoDir)
   let &undodir = myUndoDir
   set undofile
endif
