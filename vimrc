let mapleader="'"
set runtimepath+=.vim

augroup MyAutoCmd
  autocmd!
augroup END

so ~/.vim/configs/dein.vim
so ~/.vim/configs/mapping.vim
so ~/.vim/configs/option.vim

" colorscheme hybrid
colorscheme tender

hi Normal ctermbg=None guibg=NONE
packloadall
silent! helptags ALL

