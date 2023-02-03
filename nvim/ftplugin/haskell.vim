" Optional Haskell linter.
"
" Before use, install:
" stack install stylish-haskell
" stack install hindent

function! HaskellFormat() abort
    :%!hindent
    :%!stylish-haskell
endfunction

nnoremap <silent> <leader>f mz:call HaskellFormat()<CR>`z:w<CR>
