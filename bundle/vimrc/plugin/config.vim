" 色彩主题
colo molokai
set t_Co=256 " 256 色

" 关闭兼容模式
set nocompatible
" 开启魔法匹配
set magic
" 退格键行为
set backspace=indent,eol,start
" 右下角显示标尺
set ruler
" 编码设置
set fileencodings=ucs-bom,utf-8,gbk

" 缩进设置
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" 高亮括号对
set showmatch
" 自动缩进
set autoindent
" 高亮搜索
set hlsearch
" 状态栏显示键入的命令
set showcmd
" 不创建备份文件
set nobackup
" 高亮当前行
set cursorline
" 智能大小写判断
set ignorecase smartcase
" 语法高亮
syntax on
" 打开文件类型支持
filetype plugin indent on
" 递归向上查找 tags
set tags=tags;
" 修复 Terminal 下面中文双引号的问题
set ambiwidth=double

" 即时搜索
set incsearch

" 永远显示状态栏
set laststatus=2

" undo dir
if v:version >= 703
  set undodir=$HOME/.vimundodir
  set undofile
endif

autocmd BufReadPost * call handy#JumpToLatest()
