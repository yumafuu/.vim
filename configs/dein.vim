let deinbase = "~/.config/nvim/dein/"
let deinpath = deinbase . "repos/github.com/Shougo/dein.vim"
let s:rcbase="~/.config/nvim/rc/"

execute "set runtimepath+=" . deinpath
if dein#load_state(deinbase)
  call dein#begin(deinbase)
  call dein#add(deinpath)

  let all = split(glob("~/.config/nvim/toml/*.toml"), "\n")
  for f in all
    call dein#load_toml(f, {'lazy': 0})
  endfor

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
