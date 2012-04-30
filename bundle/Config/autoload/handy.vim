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
