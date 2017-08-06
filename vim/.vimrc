"< VUNDLE =======================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle examples
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive' " plugin on GitHub repo

" my selection
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'
Plugin 'godlygeek/tabular'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required
" VUNDLE > ======================================================================



" My Configuration
syntax enable

set lines=99
set columns=95

set nowrap

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set number
set showcmd

set cursorline

set wildmenu

set lazyredraw
set showmatch

set incsearch
set hlsearch 

"set paste       " not to add spaces in the start of lines


" folds
set foldenable
set foldlevelstart=10
set foldnestmax=10
"nnoremap <space> za
set foldmethod=indent

" move within wrapped lines
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]


set backupdir=~/.temp
set directory=~/.temp


" airline
"set laststatus=2
" let g:airline_powerline_fonts = 1


nmap <A-j> <plug>NERDCommenterTogglej

nmap <F4> :NERDTreeToggle<CR>
nmap <F5> :!python %<CR>
nmap <F8> :TagbarToggle<CR>

vmap / y/\V<C-R>"<CR>

"unmap <C-y>


" VirtualEnv
let g:virtualenv_directory='~/virtenvs'
" Airline Theme
let g:airline_theme='badwolf'


