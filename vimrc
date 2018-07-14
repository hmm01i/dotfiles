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

let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:UltiSnipsSnippetDirectories      = ['~/.vim/UltiSnips', 'UltiSnips']

let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']


" Backspace behaviour in vim
" to make it work like "other" programs
"
"set backspace=indent,eol,start
"

"Longer answer
"
"Though the default behaviour may be surprising, the backspace "not working"
"can be considered a feature; it can prevents you from accidentally removing
"indentation, and from removing too much text by restricting it to the current
"line and/or the start of the insert.
"
":help 'backspace' tells us:
"
"Influences the working of `<BS>`, `<Del>`, `CTRL-W` and `CTRL-U` in Insert
"mode.  This is a list of items, separated by commas.  Each item allows
"a way to backspace over something:
"
"value     effect
"indent    allow backspacing over autoindent
"eol       allow backspacing over line breaks (join lines)
"start     allow backspacing over the start of insert; CTRL-W and CTRL-U
"          stop once at the start of insert.
