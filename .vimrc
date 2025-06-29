set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" To install any plugin to their github repo clone them and mv the dir
" inside ~/.vim/blunde -> Start with Vundle.vim you will get the rest
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'nvie/vim-flake8'
Plugin 'ayu-theme/ayu-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"
" =========================================================================================>
" VIM custom
syntax on

" Enable more colors
" For color scheme put the .vim file inside the dir '~/.vim/colors"
" but maybe need to install the plugin then follow the install plugin steps.
"
" set t_Co=256 " To enable all 256 color bits
set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" This is to fold the long function code
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" This stuff I dont get
au BufNewFile, BufRead *.py
			\ set tabstop=4
			\ set softtabstop=4
			\ set textwidth=4
			\ set expandtab
			\ set autoindent
			\ set fileformat=unix

" Set Up linter here
let g:ale_linters = {"python": ['flake8']}

" Set line number here
set relativenumber
