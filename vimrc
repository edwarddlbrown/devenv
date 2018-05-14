filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
let mapleader = " "

set numberwidth=2

nnoremap <leader>ve :split $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>

"source line(not sure if this works)
nnoremap <leader>sl yy:<c-r>0<del><cr>
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



call plug#begin('~/.vim/plugged')
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
" call plug#begin('~/.vim/plugged')
"
" " Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" Install plugins by running PlugInstall
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'tpope/vim-fugitive'
"Plug 'https://github.com/vim-scripts/dbext.vim.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
call plug#end()
let g:dbext_default_profile_psql = 'type=PGSQL:host=pgicam-prod-db.umms.med.umich.edu:port=5433:dbname=sahmdb:user=mluser'
let g:dbext_default_profile = 'psql'

