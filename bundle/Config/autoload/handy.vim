" 打开文件时自动跳转到最后输入的位置
function! handy#JumpToLatest()
  if line("'\"") > 1 && line("'\"") <= line("$")
    exe "normal! g`\""
  endif
endfunction

" 查找文字
function! handy#SearchWord()
    let word = input("search:", expand("<cword>"))
    if word[0] == "/" && word[len(word)-1] == "/"
        execute "vimgrep ".word." **"
    else
        execute "vimgrep /\\<".word."\\>/gj **"
    endif
    copen
endfunction

" 切换编辑 Snippet
function! handy#ToggleSnipple()
    if &ft == 'snippet'
        w!
        call ReloadAllSnippets()
        edit #
        bdelete #
    else
        edit `=expand("~/.vim/bundle/customSnippet/snippets/" . &ft . ".snippets")`
    endif
endfunction

" 根据 tags 文件设置当前目录
function! handy#AutoChangePwd()
    let file = finddir('.git', '.;')
    if isdirectory(file)
        execute ":lcd " . fnamemodify(file, ":p:h:h")
    endif
endfunction

" 生成 jstags
function! handy#GenerateTag()
    let file = fnamemodify(findfile('jstags', '.;'), ':p')
    if executable(file)
        execute ':silent !' . file
    endif
endfunction

" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
" @see http://blog.bs2.to/post/EdwardLee/17961
function! handy#RemoveTrailingWhitespace()
    if &ft != "diff"
        let b:curcol = col(".")
        let b:curline = line(".")
        silent! %s/\s\+$//
        silent! %s/\(\s*\n\)\+\%$//
        call cursor(b:curline, b:curcol)
    endif
endfunction

" Prevent jumps out of current buffer
" From: ib.
" @see http://stackoverflow.com/questions/7066456/vim-how-to-prevent-jumps-out-of-current-buffer
function! handy#JumpInFile(back, forw)
    let [n, i] = [bufnr('%'), 1]
    let p = [n] + getpos('.')[1:]
    sil! exe 'norm!1' . a:forw
    while 1
        let p1 = [bufnr('%')] + getpos('.')[1:]
        if n == p1[0] | break | endif
        if p == p1
            sil! exe 'norm!' . (i-1) . a:back
            break
        endif
        let [p, i] = [p1, i+1]
        sil! exe 'norm!1' . a:forw
    endwhile
endfunction

function! handy#VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . ""
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . ""
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
