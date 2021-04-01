syntax on
set background=dark
set helplang=ja
set nu
set incsearch
set smartcase
set title
set list
set nobackup
set noswapfile
set cursorline
set cursorcolumn
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest
set expandtab
set tabstop=2
set shell=$SHELL
set shiftwidth=2
set list
set listchars=tab:\▸\-,trail:·,extends:»,precedes:«,nbsp:%
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
set hlsearch
set ignorecase
set ruler
set nocompatible
set autoread
set backspace=indent,eol,start
set exrc
set secure
set wildmenu
set wildmode=full
set encoding=UTF-8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set splitbelow
set splitright
set foldtext=FoldCCtext()
set foldcolumn=1
set fillchars=vert:\|
filetype plugin on
au BufNewFile,BufRead .pryrc setf ruby
au BufNewFile,BufRead Steepfile setf ruby
au BufNewFile,BufRead .env* setf sh
au BufNewFile,BufRead Dockerfile* setf dockerfile

if has('mac')
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif
