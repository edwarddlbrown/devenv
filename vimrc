call plug#begin('~/.vim/plugged')
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'tpope/vim-fugitive'
"Plug 'https://github.com/vim-scripts/dbext.vim.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/jgdavey/tslime.vim.git'
Plug 'jalvesaq/Nvim-R'
call plug#end()
"""""Rplugin stuff""""""""'
""" resource:
"https://medium.freecodecamp.org/turning-vim-into-an-r-ide-cd9602e8c217
"
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
set numberwidth=2

let mapleader = " "
let maplocalleader = " "

nnoremap <localleader>ve :split $MYVIMRC<cr>
nnoremap <localleader>vs :source $MYVIMRC<cr>
nnoremap <localleader>vl yy:<c-r>0<del><cr>

"source line(not sure if this works)
"insert curent date
nnoremap <F5> "=strftime("%c")<CR>P


""""""""Nerd tree stuff"""""""
"Map nt
nnoremap <leader>nt :NERDTreeToggle<CR>
"this is really weird, but it's required to be able to open subdirectories in
"userfolders
let g:NERDTreeDirArrows=0

""""""""copy paste"""""""
"system paste
nnoremap <leader>pp "+p
nnoremap <leader>pP "+P
"system copy
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y


""""""""<esc> remap area""""""
inoremap jk <esc>


""""""""idea remaps"""""""
if has("idea")
  nnoremap <leader>cc 80i-<esc>
  ""nnoremap <leader>nn :split //notes/sql.sql
  nnoremap <leader>sg :action DatabaseView.SqlGenerator<CR>
endif

onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
"Notes for above command:
  "Need to use execute b/c it can handle special chars more easily
  "Normal runs the next set of chars as if they are in normal mode. Bang,
    "don't get yet
    "also don't get the <c-u> yet
  "?^==\+$  backwards search for any lines with two or more equal signs and
    "nothing else
  ":nohlsearch clears search highlighting, i usually just use :noh kvg_  up, visual, last non blank char ($ would get endlines too) 
"neovim stuff
if has('nvim')
    tnoremap jk <C-\><C-n>
endif


""specific file settings
"javascript
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>j
"autocmd FileType vim vnoremap <buffer> <localleader>c I"<esc>
autocmd FileType sql nnoremap <buffer> <localleader>c I--<esc>

let g:dbext_default_profile_psql = 'type=PGSQL:host=pgicam-prod-db.umms.med.umich.edu:port=5432:dbname=sahmdb:user=mluser'
let g:dbext_default_profile = 'psql'
let g:tslime_always_current_session = 1 
let g:tslime_always_current_window = 1

"vnoremap <C-c><C-c> <Plug>SendSelectionToTmux
"nnoremap <C-c><C-c> <Plug>NormalModeSendToTmux
"nnoremap <C-c>r <Plug>SetTmuxVars



let g:dbext_default_profile_psql = 'type=PGSQL:host=pgicam-prod-db.umms.med.umich.edu:port=5433:dbname=sahmdb:user=mluser'
let g:dbext_default_profile = 'psql'

