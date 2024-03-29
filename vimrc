"
" ╻ ╻╻┏┳┓┏━┓┏━╸   ┏━╸╻╻  ┏━╸
" ┃┏┛┃┃┃┃┣┳┛┃     ┣╸ ┃┃  ┣╸
" ┗┛ ╹╹ ╹╹┗╸┗━╸   ╹  ╹┗━╸┗━╸
"                       -- by tato
set shell=/bin/fish
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/fzf'
Plugin 'dylanaraps/wal.vim'
Plugin 'davidhalter/jedi-vim'

call vundle#end()


filetype plugin indent on
set background=dark
set ttyfast
set lazyredraw
syntax on

colorscheme nord

" Light line configuration
let g:lightline = {
	\ 'colorscheme': 'seoul256',
	\ }

" Leader Mappings
let mapleader = "\<Space>"
map <Leader>w :update<CR>
map <Leader>q :qall<CR>
map <Leader>e :bdel<CR>

map <Leader>h :bp<CR>
map <Leader>l :bn<CR>

" Reduce timeout after <ESC> is recvd. This is only a good idea on fast links.
set ttimeout
set ttimeoutlen=20
set notimeout

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path

"key to insert mode with paste using F2 key
map <Leader>p :set paste<CR>i
" Leave paste mode on exit
au InsertLeave * set nopaste

set backspace=2   " Backspace deletes like most programs in insert mode
set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup
set nowritebackup
set history=500
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set nohlsearch      " highlight matches
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set listchars=tab:▸\ ,eol:¬

" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif"

" Switch syntax highlighting on, when the terminal has colors
let g:snippetsEmu_key = "<S-Tab>"

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" convert hash rockets
nmap <leader>rh :%s/\v:(\w+) \=\>/\1:/g<cr>

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t

" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_enable_highlighting=0

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e

" cmd n, cmd p for fwd/backward in search
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" Easy navigation between splits. Instead of ctrl-w + j. Just ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set relative number but real number in current line
set number
set relativenumber

nnoremap <C-n> :call NumberToggle()<cr>
