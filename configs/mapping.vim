nnoremap <C-[><C-[> :nohlsearch<CR><Esc>
nnoremap <C-@><C-@> :nohlsearch<CR><Esc>
nnoremap <C-n> gt<CR>
nnoremap <C-p> gT<CR>
nnoremap <Space>h :bprev<CR>
nnoremap <Space>l :bnext<CR>
nnoremap <C-g> :tabe<CR>:GFiles<CR>
nnoremap <Space>g :GFiles<CR>
nnoremap <Space>p :let @+ = substitute(expand("%:p"), expand("%:t"), "", "g")<CR>
imap <C-h> <Left>
imap <C-l> <Right>
nnoremap ; :
nnoremap : ;

" break
au FileType ruby
      \ nnoremap <space>b obinding.pry<ESC>
au FileType python
      \ nnoremap <space>b oimport ipdb<ESC>oipdb.set_trace()<ESC>

" rm spaces
autocmd BufWritePre * :%s/\s\+$//ge
" todo.vim
au BufNewFile,BufRead *.todo setf todo

" * not to move next word
nnoremap <silent><expr>
      \ *
      \ v:count ? '*' :
      \ '
      \ :sil exe "keepj norm! *"
      \ <Bar> call winrestview(' .
      \ string(winsaveview()) . ')<CR>'
