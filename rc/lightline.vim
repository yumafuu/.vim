let g:lightline = {
  \   'colorscheme': 'PaperColor',
  \   'active': {
  \     'left': [
  \       [ 'mode', 'paste' ],
  \       [ 'readonly', 'filename', 'modified', 'charvaluehex' ],
  \     ]
  \   },
  \   'component': {
  \     'charvaluehex': '0x%B'
  \   },
  \   'component_function': {
  \     'filename': 'LightlineFilename',
  \   }
  \ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'gitbranch_path'), ':h:h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction
