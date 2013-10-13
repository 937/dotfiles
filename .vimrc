set nocompatible

set number
set laststatus=2
set showcmd
set display+=lastline
set autoindent
set nosmartindent
set nocindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set indentexpr=""
set ruler
set backspace=indent
set showmatch
set filetype=off

if !has('gui_running')
  set t_Co=256
endif

set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

set fileencodings=utf-8,cp923,euc-jp,latin1
set ambiwidth=double
syntax on

" NeoBundle
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

let g:neobundle_default_git_protocol='https'
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
    \ 'build' : {
    \     'windows' : 'make -f make_mingw32.mak',
    \     'cygwin' : 'make -f make_cygwin.mak',
    \     'mac' : 'make -f make_mac.mak',
    \     'unix' : 'make -f make_unix.mak',
    \    },
    \ }
NeoBundleCheck

filetype plugin on
filetype indent on

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'scrooloose/nerdtree'

"Color Schemes
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/Zenburn'
NeoBundle 'fugalh/desert.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

colorscheme zenburn

