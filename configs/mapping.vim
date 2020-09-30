nnoremap <C-[><C-[> :nohlsearch<CR><Esc>
nnoremap <C-@><C-@> :nohlsearch<CR><Esc>
nnoremap <Space><Space> :set relativenumber!<CR><Esc>
nnoremap <C-n> gt<CR>
nnoremap <C-p> gT<CR>
nnoremap <Space>h :bprev<CR>
nnoremap <Space>l :bnext<CR>
nnoremap <C-g> :tabe<CR>:call Myfzf()<CR>
nnoremap <Space>g :call Myfzf()<CR>
nnoremap <Space>p :let @+ = substitute(expand("%:p"), expand("%:t"), "", "g")<CR>
imap <C-h> <Left>
imap <C-l> <Right>

function! Myfzf()
  if len(system('git rev-parse'))
    Files
  else
    GFiles --exclude-standard --others --cached
  endif
endfunction

" reload init.vim
nmap <Space>v :so ~/.config/nvim/init.vim<CR>

" break
au FileType ruby nnoremap <space>b obinding.pry<ESC>
au FileType python nnoremap <space>b oimport ipdb<ESC>oipdb.set_trace()<ESC>

" * not to move next word
nnoremap <silent><expr> * v:count ? '*'
\ : ':sil exe "keepj norm! *" <Bar> call winrestview(' . string(winsaveview()) . ')<CR>'

" rm spaces
autocmd BufWritePre * :%s/\s\+$//ge
" todo.vim
au BufNewFile,BufRead *.todo setf todo
