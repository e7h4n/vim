" Paste flag
set statusline=%{&paste=='nopaste'?'':'[p]'}[%{CurDir()}]\ %F%m%r%h\ \ %{&fenc!=''?&fenc:&enc}\ %=%l:%c\ %P\ of\ %L

function! CurDir()
    let home = substitute(expand("$HOME"), "\\", "\\\\\\", "g")
    return substitute(getcwd(), home, "~", "g")
endfunction
