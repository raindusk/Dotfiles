" Nocompatible mode with Vi
set nocompatible

" Syntax theme
syntax enable
set background=dark
colorscheme brezza

" Update file when changed from outside of Vim.
set autoread

" Tabs & Spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set backspace=indent,eol,start
" set textwidth=80

" UI
set number
set signcolumn=yes
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
set mouse=a
set noerrorbells

"
set timeoutlen=1000 ttimeoutlen=0

" Files
set encoding=utf-8
set fileformats=unix,mac,dos

" Syntax highlight
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim



"""""""""""
" Vundle
"""""""""""
"
"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" File system explorer
Plugin 'scrooloose/nerdtree'

" Asynchronous Lint Engine
Plugin 'w0rp/ale'

" Syntax highlighting Slim
Plugin 'slim-template/vim-slim.git'

" Syntax highlighting Elm
Plugin 'elmcast/elm-vim'

" Prettier wrapper (formatter)
Plugin 'prettier/vim-prettier'

" Emmet for Vim
Plugin 'mattn/emmet-vim'

" Complement to command line git.
Plugin 'tpope/vim-fugitive'

" Helper to end certain structures automatically.
Plugin 'tpope/vim-endwise'

" Helper to quote
Plugin 'jiangmiao/auto-pairs'

" JavaScript syntax
Plugin 'othree/yajs.vim'

" JSX syntax
Plugin 'maxmellon/vim-jsx-pretty'

" Vim-script library,
"   which provides some utility functions and commands.
Plugin 'L9'

" Jumping to tags.
Plugin 'wincent/command-t'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" HTML utility.
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
