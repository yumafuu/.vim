nnoremap <C-[><C-[> :nohlsearch<CR><Esc>
nnoremap <C-@><C-@> :nohlsearch<CR><Esc>
nnoremap <C-n> gt<CR>
nnoremap <C-p> gT<CR>
nnoremap <C-g> :tabe<CR>:GFiles<CR>
imap <C-h> <Left>
imap <C-l> <Right>
nnoremap ; :
nnoremap : ;
nnoremap j gj
nnoremap k gk
nnoremap zs :sp<CR><C-w>w
nnoremap zv :vs<CR><C-w>w
nnoremap zl <C-w>l
nnoremap zk <C-w>k
nnoremap zh <C-w>h
nnoremap zj <C-w>j
nnoremap te :execute ":tabe" expand("%:h")<CR>
inoremap <C-r> <C-r>"
nnoremap J gJ
vnoremap <C-m> :Code2img<CR>

nnoremap <Space>a gg=G
nnoremap <Space>q: q:
nnoremap <Space>v :so ~/.vimrc<CR>
nnoremap /  /\v
vnoremap :s/ :s/\v
" nnoremap <leader>x :execute ":term://" expand("%:h")

" break
au FileType ruby
      \ nnoremap <space>b obinding.pry<ESC>
au FileType python
      \ nnoremap <space>b oimport ipdb<ESC>
      \ oipdb.set_trace()<ESC>

" rm spaces
autocmd BufWritePre * :%s/\s\+$//ge

" * not to move next word
nnoremap <silent><expr> *
      \ v:count ? '*' :
      \ '
      \ :sil exe "keepj norm! *"
      \ <Bar> call winrestview(
      \ ' .
      \ string(winsaveview()) . ')<CR>'

