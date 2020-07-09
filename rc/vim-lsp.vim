let g:lsp_settings_servers_dir = '~/.config/nvim/vim-lsp-settings/servers'
let g:lsp_signs_error ={'text': '✗'}
let g:lsp_highlights_enabled = 0
let g:lsp_textprop_enabled = 0

highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green
" highlight LspWarningLine ctermfg=white guifg=white ctermbg=blue guibg=blue
highlight LspWarningText ctermfg=white guifg=white ctermbg=blue guibg=blue
" highlight LspWarningVirtual ctermfg=white guifg=white ctermbg=blue guibg=blue
highlight LspErrorText ctermfg=white guifg=white ctermbg=darkred guibg=darkred
highlight LspErrorHighlight ctermfg=white guifg=white ctermbg=darkred guibg=darkred
highlight LspErrorVirtual ctermfg=white guifg=white ctermbg=darkred guibg=darkred

nnoremap <silent> K :LspHover<CR>
nnoremap <silent> gd :LspDefinition<CR>
nnoremap <silent> gt :LspTypeDefinition<CR>
nnoremap <silent> <Space>lr :LspRename<CR>

 autocmd BufWritePre <buffer> LspDocumentFormatSync
