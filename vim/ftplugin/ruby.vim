map <F9> :!ruby -cw %<CR>

setlocal omnifunc=rubycomplete#Complete

let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_rails = 1
let g:rubycomplete_classes_in_global = 1