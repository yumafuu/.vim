let mapleader="_"

nnoremap <C-[><C-[> :nohlsearch<CR><Esc>
nnoremap <C-@><C-@> :nohlsearch<CR><Esc>
nnoremap <Space><Space> :set relativenumber!<CR><Esc>
nnoremap <C-n> gt<CR>
nnoremap <C-p> gT<CR>
nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-g> :tabe<CR>:Files<CR>
imap <C-h> <Left>
imap <C-l> <Right>

" reload init.vim
nmap <Space>v :so ~/.config/nvim/init.vim<CR>

" binding.pry
au FileType ruby nnoremap <space>b obinding.pry<ESC>

" * not to move next word
nnoremap <silent><expr> * v:count ? '*'
\ : ':sil exe "keepj norm! *" <Bar> call winrestview(' . string(winsaveview()) . ')<CR>'

" rm spaces
autocmd BufWritePre * :%s/\s\+$//ge

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

"dein Scripts-----------------------------
let deinpath = "~/.config/nvim/dein/repos/github.com/Shougo/dein.vim"
execute "set runtimepath+=" . deinpath

if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')
  execute "call dein#add('" . deinpath . "')"

  let s:plugin = '~/.config/nvim/toml/plugin.toml'
  let s:lang = '~/.config/nvim/toml/lang.toml'
  let s:dark_powers = '~/.config/nvim/toml/dark_powers.toml'
  call dein#load_toml(s:dark_powers, {'lazy': 0})
  call dein#load_toml(s:lang, {'lazy': 0})
  call dein#load_toml(s:plugin, {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
"End dein Scripts-------------------------
