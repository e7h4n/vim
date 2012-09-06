" NERDTree快捷键 
nmap <silent> <Leader>nt :NERDTreeToggle<CR>
nmap <silent> <Leader>nf :NERDTreeFind<CR>

" 更快的切换到刚刚编辑的文件上去
nmap <silent> <space> <C-^>

" CtrlP
nmap <silent> <C-j> :CtrlPTag<cr>

" fugitive
nmap <Leader>gc :Gcommit<cr>
nmap <Leader>gs :Gstatus<cr>

" 使用上下来调节窗口大小
nmap <silent> <UP> <C-W>+:let t:flwwinlayout = winrestcmd()<CR>
nmap <silent> <DOWN> <C-W>-:let t:flwwinlayout = winrestcmd()<CR>

" 使用 Y 来复制到行尾
nmap Y y$

" 使用 gP 来粘贴最近一次 yank 的文字
nmap gp "0p
nmap gP "0P

" 快速编译
map <Leader>m :make<CR>

" 切换到 shell
map <Leader>sh :sh<CR>

" TagList
map <silent> <F10> :TagbarToggle<CR>

" 命令模式下方便移动光标
if (!has ("gui_win32"))
  cmap <C-A> <Home>
  cmap <C-E> <End>
endif

" 切换粘贴模式
nmap <silent> <F6> :set invpaste<CR>

" 切换行号
nmap <silent> <F5> :set invnu<CR>

" 目录中查找内容
nmap <F3> :call handy#SearchWord()<CR>


" ^L 刷新
nnoremap <silent><C-L> :nohlsearch<CR><C-L>

" 当前分屏最大
nmap  <C-W>

" F7/F8 切换下一条 diff / quickfix
" @see http://vim.wikia.com/wiki/Selecting_changes_in_diff_mode
if &diff
    let g:origCursorPos=getpos('.')
    autocmd WinEnter * :call setpos('.', g:origCursorPos)
    autocmd WinLeave * :let g:origCursorPos=getpos('.')
    nmap <F7> [c
    nmap <F8> ]c
else
    map <F7> :cp<cr>
    map <F8> :cn<cr>
endif

" 编辑 snippet
nmap <F9> :call handy#ToggleSnipple()<CR>

" 更方便的 <Esc>
imap <silent> ii <esc>:w<cr>

" 打开一个临时的缓冲区随便记东西
nmap <Leader>S :Scratch<cr>

" 交换 0 和 ^
nnoremap 0 ^
nnoremap ^ 0
nnoremap d0 d^
nnoremap d^ d0
nnoremap c0 c^
nnoremap c^ c0
nnoremap s0 s^
nnoremap s^ s0
nnoremap y0 y^
nnoremap y^ y0

" 快速跳到下一个驼峰位置
nmap t` /[A-Z]<cr>

" 使用 C-i 来调用 complete
inoremap <C-j> <C-x><C-u>

" 在 macvim 下通过 cmd+r 来 make 项目
if has("gui_macvim")
    nmap <D-r> :silent make<cr>
endif

" Prevent jump out from current buffer
nnoremap <silent> g<c-o> :call handy#JumpInFile("\<c-i>", "\<c-o>")<cr>
nnoremap <silent> g<c-i> :call handy#JumpInFile("\<c-o>", "\<c-i>")<cr>

" 搜索前先标记当前位置，方便回到当前位置上
nnoremap / ms/
nnoremap ? ms?

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Really useful!
"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call handy#VisualSearch('f')<CR>
vnoremap <silent> # :call handy#VisualSearch('b')<CR>
