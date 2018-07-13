" work around to eliminate depracation warning
if has('python3')
	  silent! python3 1
endif

execute pathogen#infect()
syntax on
filetype plugin indent on
set background=light
colorscheme solarized

" Tabbing
"set tabstop=8
"set softtabstop=2
"set expandtab
"set shiftwidth=2

" Undo history
let vimDir = '$HOME/.vim'
" " Keep undo history across sessions by storing it in a file
if has('persistent_undo')
   let myUndoDir = '/tmp/$USER/undodir'
  " Create dirs
   call system('mkdir ' . myUndoDir)
   let &undodir = myUndoDir
   set undofile
endif

" New split to right and below
set splitright
set splitbelow

" Line numbers
set number
set relativenumber

" Remap window switching
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" Quick disable highlighting
nnoremap <C-=> :nohl<CR>

noremap <C-N> :NERDTreeFind<CR>

