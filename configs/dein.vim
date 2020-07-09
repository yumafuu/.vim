let deinbase = "~/.config/nvim/dein/"
let deinpath = deinbase . "repos/github.com/Shougo/dein.vim"

execute "set runtimepath+=" . deinpath
if dein#load_state(deinbase)
  call dein#begin(deinbase)
  call dein#add(deinpath)

  let all = glob("~/.config/nvim/toml/*.toml")
  for f in split(all, "\n")
    call dein#load_toml(f, {'lazy': 0})
  endfor

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
