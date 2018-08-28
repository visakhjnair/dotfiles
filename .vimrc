""" VIM-PLUG
" Syntax: Plug 'USER/REPO'; fetches https://github.com/USER/REPO
call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'            " ack support for vim
Plug 'tpope/vim-commentary'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'vim-python/python-syntax'
" Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-obsession'
Plug 'terryma/vim-multiple-cursors'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'

call plug#end()

" Use :PlugInstall to install plugins
" augroup myvimrc
"     au!
"     au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc
"        \ so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
" augroup END


""" Line Length
" set colorcolumn=80


""" Plugin Settings
let g:python_highlight_all = 1
let g:python_highlight_operators = 0
let g:ackprog = 'ag --vimgrep'
let g:pymode_python = 'python3'

""" Colors
syntax enable
" let t_Co = 256
" let base16colorspace=256
" set background=dark
" colorscheme base16-tomorrow-night


""" Tabs vs Spaces
set expandtab          " tabs are spaces
set tabstop=4          " number of visual spaces per tab
set softtabstop=4      " number of spaces in tab when editing
filetype indent on     " load filetype-specific indent files


""" Leader
let mapleader=","
inoremap jk <esc>


""" UI Config
" set number             " show line numbers
set showcmd            " show command in the bottom bar
" set cursorline         " highlight current line
set wildmenu           " visual autocomplete for command menu
set showmatch          " highlight matching [{()}]
set laststatus=2

 
""" Searching
set incsearch
set hlsearch


""" Movement
" move visually
nnoremap j gj
nnoremap k gk


""" Commands    
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>s :mksession!<CR>:wa<CR>:qa<CR>
nnoremap <leader>a :Ag 
nnoremap <leader><space> :nohlsearch<CR>


""" Other
" Persistent Undo
try
    set undodir=~/.vim/undodir
    set undofile
catch
endtry
