set omnifunc=ale#completion#OmniFunc
let g:ale_sign_column_always = 1
let g:ale_linters = {
    \ 'python': ['flake8', 'pylint'],
    \ 'ruby': ['standardrb', 'rubocop'],
    \ }
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'python': ['yapf'],
    \ 'ruby': ['rubocop'],
    \ }
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_warn_about_trailing_whitespace = 0
