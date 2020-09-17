" colorscheme molokai
" colorscheme atom-dark
" colorscheme material-theme
set background=dark
set helplang=ja
set nu
set relativenumber
set incsearch
set smartcase
set title
set list
set nobackup
set background=
set noswapfile
set cursorline
set cursorcolumn
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest
set expandtab
set tabstop=2
set shell=/usr/local/bin/zsh
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
set clipboard=unnamed
set backspace=indent,eol,start
set exrc
set secure
set wildmenu
set wildmode=full
language en_US
filetype plugin on

au BufNewFile,BufRead Dockerfile setf docker
