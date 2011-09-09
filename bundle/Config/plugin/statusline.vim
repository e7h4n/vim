set statusline=
" Paste flag
set statusline+=%{&paste=='nopaste'?'':'[p]'}
set statusline+=[%{CurDir()}]\ 
set statusline+=%F%m%r%h\ 
set statusline+=\ %{&fenc!=''?&fenc:&enc}\ 
set statusline+=%=%l:%c\ %P\ of\ %L

function! CurDir()
    let curdir = substitute(getcwd(), expand("$HOME"), "~", "g")
    return curdir
endfunction
