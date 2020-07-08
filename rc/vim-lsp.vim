let g:lsp_settings_servers_dir = '~/.config/nvim/vim-lsp-settings/servers'
let g:lsp_signs_error ={'text': '✗'}
highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green
highlight LspErrorText ctermfg=white guifg=white ctermbg=blue guibg=blue
highlight LspWarningLine ctermfg=black guifg=black ctermbg=yellow guibg=yellow

nnoremap <silent> K :LspHover<CR>
nnoremap <silent> gd :LspDefinition<CR>
nnoremap <silent> gt :LspTypeDefinition<CR>
nnoremap <silent> <Space>lr :LspRename<CR>

autocmd BufWritePre <buffer> LspDocumentFormatSync
