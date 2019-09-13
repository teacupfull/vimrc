if !exists("g:potion_command")
    let g:potion_command = "bin/potion"
endif

function! PotionCompileAndRunFile()
    silent !clear
    execute "!" . g:potion_command . " " . bufname("%")
endfunction

nnoremap <buffer> <localleader>r :call PotionCompileAndRunFile()<cr>

function! OpenSplit()
    silent !clear
    vsplit a
endfunction

    
nnoremap <buffer> <localleader>o :call OpenSplit()<cr>
