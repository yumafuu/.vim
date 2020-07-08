let mapleader="_"

let s:list = [
  \ "mappings",
  \ "basic",
  \ "dein",
  \ ]

let s:nvim = "~/.config/nvim/"
for f in s:list
  exe("so " . s:nvim . f . ".vim")
endfor
