let g:lsp_settings_servers_dir = '~/.config/nvim/vim-lsp-settings/servers'
let g:lsp_signs_error ={'text': '✗'}
let g:lsp_highlight_references_enabled = 1
" let g:lsp_highlights_enabled = 0
" let g:lsp_textprop_enabled = 1

highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green

" highlight LspWarningText ctermfg=white guifg=white ctermbg=blue guibg=blue
" highlight LspWarningLine ctermfg=white guifg=white ctermbg=blue guibg=blue
" highlight LspWarningVirtual ctermfg=white guifg=white ctermbg=blue guibg=blue
highlight LspErrorText ctermfg=white guifg=white ctermbg=red guibg=red
highlight LspErrorLine ctermfg=white guifg=white ctermbg=darkred guibg=darkred
highlight LspErrorVirtual ctermfg=black guifg=black ctermbg=darkred guibg=darkred

highlight LspErrorHighlight ctermfg=black guifg=black ctermbg=blue guibg=blue
" highlight LspInformationHighlight ctermfg=white guifg=white ctermbg=darkred guibg=darkred
" highlight LspWarningHighlight ctermfg=white guifg=white ctermbg=darkred guibg=darkred
" highlight LspHintHighlight ctermfg=white guifg=white ctermbg=darkred guibg=darkred

nnoremap <silent> K :LspHover<CR>
nnoremap <silent> gd :LspDefinition<CR>
nnoremap <silent> gt :LspTypeDefinition<CR>
nnoremap <silent> <Space>lr :LspRename<CR>

autocmd BufWritePre <buffer> LspDocumentFormatSync
