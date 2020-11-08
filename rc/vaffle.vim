function! s:customize_vaffle_mappings() abort
  nmap <buffer> <Bslash> <Plug>(vaffle-open-root)
  nmap <buffer> o        <Plug>(vaffle-mkdir)
  nmap <buffer> i        <Plug>(vaffle-new-file)
  nmap <buffer> h        <Plug>(vaffle-open-parent)
  nmap <buffer> l        <Plug>(vaffle-open-current)
  nmap <buffer> <CR>     <Plug>(vaffle-open-current)
  nmap <buffer> t        <Plug>(vaffle-open-current-tab)
  nmap <buffer> s        <Plug>(vaffle-open-selected-split)
  nmap <buffer> v        <Plug>(vaffle-open-selected-vsplit)
  nmap <buffer> d        <Plug>(vaffle-delete-selected)
  nmap <buffer> r        <Plug>(vaffle-rename-selected)
  nmap <buffer> R        <Plug>(vaffle-refresh)
  nmap <buffer> x        <Plug>(vaffle-fill-cmdline)
  nmap <buffer> m        <Plug>(vaffle-move-selected)
endfunction

augroup vimrc_vaffle
  autocmd!
  autocmd FileType vaffle call s:customize_vaffle_mappings()
augroup END

function! VaffleRenderCustomIcon(item)
  return WebDevIconsGetFileTypeSymbol(a:item.basename, a:item.is_dir)
endfunction

nnoremap <silent> <Leader>f :execute ":Vaffle" expand("%:h")<CR>
let g:vaffle_show_hidden_files = 1
let g:vaffle_auto_cd = 0
let g:vaffle_use_default_mappings = 0
let g:vaffle_open_selected_split_position = 'rightbelow'
let g:vaffle_open_selected_vsplit_position = 'rightbelow'
let g:vaffle_render_custom_icon = 'VaffleRenderCustomIcon'
set cmdheight=2
