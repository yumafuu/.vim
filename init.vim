let mapleader="_"

let confs = split(glob("~/.config/nvim/configs/*.vim"), "\n")
for f in confs
  exe("so " . f)
endfor
