execute pathogen#infect()
syntax on
filetype plugin indent on
set background=dark
colorscheme solarized

" Undo history
let vimDir = '$HOME/.vim'
" " Keep undo history across sessions by storing it in a file
if has('persistent_undo')
   let myUndoDir = '/tmp/undodir'
  " Create dirs
   call system('mkdir ' . myUndoDir)
   let &undodir = myUndoDir
   set undofile
endif

" Syntatics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
