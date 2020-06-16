set hidden
let g:LanguageClient_serverCommands = {
    \ 'go': ['gopls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }
let g:LanguageClient_loadSettings = 1
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
