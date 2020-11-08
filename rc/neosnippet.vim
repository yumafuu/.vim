" set completeopt-=preview

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:neosnippet#snippets_directory =
      \'$HOME/.vim/snippets/'

" call asyncomplete#register_source(
"     \ asyncomplete#sources#neosnippet#get_source_options({
"     \ 'name': 'neosnippet',
"     \ 'allowlist': ['*'],
"     \ 'completor': function('asyncomplete#sources#neosnippet#completor'),
"     \ }))
