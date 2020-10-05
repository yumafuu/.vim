let mapleader=";"
colorscheme tender

let confs = split(glob("~/.config/nvim/configs/*.vim"), "\n")
for f in confs
  exe("so " . f)
endfor

hi Normal ctermbg=NONE guibg=NONE
