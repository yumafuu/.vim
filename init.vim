let s:list = [
  \ "mapping",
  \ "basic",
  \ "dein",
  \ ]

let s:nvim = "~/.config/nvim/"
for f in s:list
  exe("so " . s:nvim . f . ".vim")
endfor
