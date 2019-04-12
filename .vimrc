" Nocompatible mode with Vi
set nocompatible

" Detect file type
filetype on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Detect dedicated plugins and indents for each file type.
filetype plugin indent on    " required


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""

" Syntax theme
syntax enable
colorscheme Brezza/brezza

" Update file when changed from outside of Vim.
set autoread

" Tabs & Spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set backspace=indent,eol,start

" UI
set number
set showcmd
set cursorline
set laststatus=2
set fillchars+=vert:\ 
set wildmenu
set showmatch
set virtualedit=onemore
noremap j gj
noremap k gk
" set statusline=%m%r%h%w\%=[Type=%Y\,\ Format=%{&ff}\,\ Enc=%{&fileencoding}\,\ %P\,\ L%L]
set clipboard+=unnamed

" Files
set encoding=utf-8
set fileformats=unix,mac,dos
