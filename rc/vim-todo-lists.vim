let g:VimTodoListsUndoneItem = '- [X]'
let g:VimTodoListsDoneItem = '- [V]'

let g:VimTodoListsCustomKeyMapper = 'VimTodoListsCustomMappings'

function! VimTodoListsCustomMappings()
  nnoremap <Space> t :VimTodoListsToggleItem<CR>
endfunction
