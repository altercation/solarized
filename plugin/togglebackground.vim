" Toggle background
" Last Change:  April 7, 2011
" Maintainer:   Ethan Schoonover
" License:      OSI approved MIT license

if exists("g:loaded_ToggleBackground")
    finish
endif
let g:loaded_ToggleBackground = 1

if !exists("no_plugin_maps") && !hasmapto('<Plug>ToggleBackground')
    " map alone won't work here as it doesn't 
    try
        silent! nmap <unique> <F5> <Plug>ToggleBackground
        silent! imap <unique> <F5> <Plug>ToggleBackground
        silent! vmap <unique> <F5> <Plug>ToggleBackground
    finally
        let g:test_val = "checked"
    endtry
endif

" noremap is a bit misleading here if you are unused to vim mapping.
" in fact, there is remapping, but only of script locally defined remaps, in 
" this case <SID>TogBG. The <script> argument modifies the noremap scope in 
" this regard (and the noremenu below).
nnoremap <unique> <script> <Plug>ToggleBackground <SID>TogBG
inoremap <unique> <script> <Plug>ToggleBackground <ESC><SID>TogBG<ESC>a
vnoremap <unique> <script> <Plug>ToggleBackground <ESC><SID>TogBG<ESC>gv
nnoremenu <script> Window.Toggle\ Background <SID>TogBG
inoremenu <script> Window.Toggle\ Background <ESC><SID>TogBG<ESC>a
vnoremenu <script> Window.Toggle\ Background <ESC><SID>TogBG<ESC>gv
noremap <SID>TogBG  :call <SID>TogBG()<CR>

function! s:TogBG()
    let &background = ( &background == "dark"? "light" : "dark" ) | exe "colorscheme " . g:colors_name
endfunction

if !exists(":ToggleBG")
    command ToggleBG :call s:TogBG()
endif

function! ToggleBackground()
    echo "Please update your ToggleBackground mapping. ':help togglebg' for information."
endfunction

