"< VUNDLE =======================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('unix')
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
else
	set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
	call vundle#begin('$USERPROFILE/vimfiles/bundle/')
endif

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
Plugin 'godlygeek/tabular'                      " :Tab/pattern   text alignment
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'SirVer/ultisnips'                       " track the engine.
Plugin 'honza/vim-snippets'                     " snippets are separated from the engine. Add this if you want them:
Plugin 'kris2k/a.vim'                           " switch source/header
" Colors
Plugin 'zeis/vim-kolor'

call vundle#end()            " required
filetype plugin indent on    " required
" VUNDLE > ======================================================================



" settings for wook
"
" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" ref: https://dougblack.io/words/a-good-vimrc.html

let mapleader = ","
set encoding=utf-8

syntax enable

"source $VIMRUNTIME/mswin.vim
"behave mswin

"colorscheme torte
let g:kolor_underlined=1
colorscheme kolor

set guioptions-=L       " windows bug; window un-snapped problem
set guioptions-=r       " windows bug; window un-snapped problem
set guioptions-=T       " toolbar

set sessionoptions-=blank
set sessionoptions-=buffers
set sessionoptions-=globals
set sessionoptions-=options
set sessionoptions-=folds

":put =&guifont"
"set guifont=D2Coding:h9:w4.9:cANSI:qDRAFT
"set guifont=Consolas:h10:cANSI:qDRAFT
if has('unix')
    set guifont=hack\ 10
else
    set guifont=hack:h10:cANSI:qDRAFT
endif


set lines=64
set columns=95
set linespace=0                 " 0 for windows (default 1, while default 0 on linux)

set selection=exclusive         " not to select a character on the cursor in visual mode

set nowrap
set tw=0                        " 0 for no auto line feed

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set number
set showcmd

set cursorline
hi clear CursorLine
hi Cursorline gui=underline cterm=underline

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

if has('unix')
	set backupdir=~/.temp
	set directory=~/.temp
else
	set backupdir=c:\Temp
	set directory=c:\Temp
endif


" airline
set laststatus=2		" display status line always...
" let g:airline_powerline_fonts = 1


nmap <A-j> <plug>NERDCommenterTogglej
nmap ,s :A<CR>

nmap <F4> :NERDTreeToggle<CR>
nmap <F5> :!python %<CR>
"nmap <F6> :!start python %<CR>
nmap <F8> :TagbarToggle<CR>

vmap / y/\V<C-R>"<CR>			" search by '/'

"unmap <C-y>

nmap <C-Up>    :bp<CR>
nmap <C-Down>  :bn<CR>
nmap <C-Left>  :tabp<CR>
nmap <C-Right> :tabn<CR>

" spelling correction for common mistake
iab slef self
iab sefl self
iab raidus radius

" Ctrl-C V for copy paste
if has("clipboard")
    " CTRL-X and SHIFT-Del are Cut
    vnoremap <C-X> "+x
    vnoremap <S-Del> "+x

    " CTRL-C and CTRL-Insert are Copy
    vnoremap <C-C> "+y
    vnoremap <C-Insert> "+y

    " CTRL-V and SHIFT-Insert are Paste
    map <C-V>		"+gP
    map <S-Insert>		"+gP

    cmap <C-V>		<C-R>+
    cmap <S-Insert>		<C-R>+
endif

exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
exe 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']




" start fullscreen on windows
"au GUIEnter * simalt ~x

" YCM
let g:ycm_log_level = 'debug'
nnoremap <leader>jd :YcmCompleter GoTo<CR>
"let g:ycm_key_list_select_completion=[]     " no use of TAB
"let g:ycm_key_list_previous_completion=[]   " no use of TAB
let g:ycm_global_ycm_extra_conf = '~/vimfiles/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ignore_files = ['\m\c\.py$']        " ignore python files



" VirtualEnv
"let g:virtualenv_directory='~/virtenvs'        " no need if $WORKON_HOME defined
" Airline Theme
let g:airline_theme='badwolf'




