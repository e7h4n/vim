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
