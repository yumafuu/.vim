let mapleader="_"
let g:EasyMotion_do_mapping = 0
nmap m <Plug>(easymotion-overwin-f)
nmap <Space>v :source ~/.config/nvim/init.vim<CR>
au FileType ruby nnoremap <space>b obinding.pry<ESC>

" * not to move next word
nnoremap <silent><expr> * v:count ? '*'
\ : ':sil exe "keepj norm! *" <Bar> call winrestview(' . string(winsaveview()) . ')<CR>'

syntax on
colorscheme molokai
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
" set clipboard=unnamed,autoselect
set backspace=indent,eol,start
set exrc
set secure
set wildmenu
set wildmode=full
language en_US
filetype plugin on
nnoremap <C-[><C-[> :nohlsearch<CR><Esc>
nnoremap <C-@><C-@> :nohlsearch<CR><Esc>
nnoremap <C-n> gt<CR>
nnoremap <C-p> gT<CR>
nnoremap <C-g> :tabe<CR>:Files<CR>

"dein Scripts-----------------------------
set runtimepath+=/Users/yuma/.config/nvim/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')
  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  let s:plugin = '~/.config/nvim/toml/plugin.toml'
  let s:dark_powers = '~/.config/nvim/toml/dark_powers.toml'
  call dein#load_toml(s:plugin, {'lazy': 0})
  call dein#load_toml(s:dark_powers, {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
"End dein Scripts-------------------------
