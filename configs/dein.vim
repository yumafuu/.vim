let deinbase = "~/.vim/dein/"
let deinpath = deinbase . "repos/github.com/Shougo/dein.vim"

execute "set runtimepath+=" . deinpath
if dein#load_state(deinbase)
  call dein#begin(deinbase)
  call dein#add(deinpath)

  let all = split(glob("~/.vim/toml/*.toml"), "\n")
  for f in all
    call dein#load_toml(f, {'lazy': 0})
  endfor
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
let g:dein#auto_recache = 1

function! DeinReload()
  :call map(dein#check_clean(), "delete(v:val, 'rf')")
  :call dein#recache_runtimepath()
endfunction
command! DeinReload :call DeinReload()

