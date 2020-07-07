let deinbase = "~/.config/nvim/dein/"
let deinpath = deinbase . "repos/github.com/Shougo/dein.vim"

execute "set runtimepath+=" . deinpath
if dein#load_state(deinbase)
  call dein#begin(deinbase)
  call dein#add(deinpath)

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
