# PerfectWorks 的 Vim 配置以及插件
作者日常工作环境为 Linux，经常编辑 JavaScript/HTML/CSS/Python/Shell 文件，因此大部分插件都是为这些文件进行优化。

这份配置对 Vim 的修改不多，每个修改都有详细的注释说明，对初学者比较友好。

尽管作者对该配置的多平台兼容性有一定处理，但因为每人的使用习惯都不一致，所以并不建议直接使用该配置文件作为生产配置使用，而是建议将该项目 fork 出一个自己的版本来维护。


有更多问题，欢迎直接联系作者。

## 安装

### *nix

在 $HOME 目录下执行以下命令

    git clone git://github.com/perfectworks/vim.git ~/.vim
    cd ~/.vim && ./install.sh

### Windows

在 %HOME% 目录下执行

    git clone git://github.com/perfectworks/vim.git %HOME%/.vim
    cd %HOME%/.vim && install.bat

## 升级

在 .vim 目录下执行以下命令

    git pull

升级插件

    git submodule foreach "git checkout master && git pull"


## 配置修改

大部分的自定义修改都在 <code>bundle/Config</code> 这个 bundle 里面

* Vim 本身配置修改一般在 <code>bundle/Config/plugin/config.vm</code>
* 快捷键修改一般在 <code>bundle/Config/plugin/shortcut.vim</code>
* 对插件的配置会在 <code>bundle/Config/plugin/插件名.vim</code>

### 自定义快捷键

大部分自定义快捷键都在 <code>bundle/Config/plugin/shortcut.vim</code> 中配置，<code>&lt;Leader&gt;</code> 键被映射为 <code>\\</code>

* Normal 模式
    * <code>P</code>: 粘贴最近一次 yank 操作的文字 (比如 yy 之后又 dd 了，可以用 P 来粘贴 yy 的结果)
    * <code><up></code>/<code><down></code>: 在分屏模式下放大 / 缩小当前窗口
    * <code>&lt;Leader&gt;nt</code>: 打开 NerdTree
    * <code>&lt;Leader&gt;nf</code> :打开 NerdTree 并且将光标跳转到现在编辑的文件 (nt 的意思是 Nerdtree Find)
    * <code>&lt;Leader&gt;m</code>: 调用系统 make
    * <code>&lt;Leader&gt;sh</code>: 打开系统 shell (打开 shell 之后退出会跳回 vim)
    * <code>&lt;F3&gt;</code>: 在当前目录以及子文件夹中搜索特定关键字 (搜索支持 Vim 正则, 默认会搜索 <code>\&lt;关键字&gt;></code>，如果要取消左右的 <code>\&lt;\&gt;</code>，可以输入 <code>/关键字</code>)
    * <code>&lt;F6&gt;</code>: 切换粘贴模式
    * <code>&lt;F5&gt;</code>: 切换显示行号
    * <code>&lt;F7&gt;</code>/<code>&lt;F8&gt;</code>: 跳到上一条/下一条 quickfix 记录，配合 <code>&lt;F3&gt;</code> 可以在搜索结果中快速跳转
    * <code>&lt;F9&gt;</code>: 快速编辑 Snippet，在 Snippet 中按 <code>&lt;F9&gt;</code> 会保存当前 Snippet，刷新 snipMate 缓存并返回刚刚编辑的文件
    * <code>&lt;F10&gt;</code>: 打开 TagBar
    * <code>&lt;Ctrl&gt;-l</code>: 清除高亮并且重绘屏幕
    * <code>&lt;Ctrl&gt;-_</code>: 分屏模式下当前窗口最大化
    * <code>t`</code>: 跳转到下一个大写字母 (驼峰式跳转)
* CommandLine 模式
    * <code>&lt;Ctrl&gt;-a</code>: 跳到命令行开始
    * <code>&lt;Ctrl&gt;-e</code>: 跳到命令行结束
* Insert 模式
    * ii: 退出到 Norm 模式并保存文件
* FuzzyFinder
    * 参考插件列表中 FuzzyFinder 的介绍

## 插件

### 插件列表

插件介绍请 Google

* FuzzyFinder
    * 强大的文件查找工具 (替换了 Command-T 以及 MRU)，主要快捷键映射有
    * <code>&lt;space&gt;</code> 搜索 Buffer (以前的版本中这个快捷键是 BufExplorer)
    * <code>&lt;Ctrl&gt;-j</code> 搜索文件 (替换掉了 Command-T)
    * <code>&lt;F12&gt;</code> 在最近打开的文件中搜索 (以前版本中这个快捷键是 MRU)
    * <code>&lt;leader&gt;fr</code> 更新 Cache (:FufRenewCache)
* nerdcommenter 快速给代码加注释
* vim-surround 修改一段代码周围的引号、括号等
* CmdlineComplete 给命令行提供补全功能
* bufexplorer 提供 Buffer 列表
* zencoding-vim
    * 快捷键是 <code>&lt;Ctrl&gt;-k</code>
* nerdtree 查看目录树
    * 设置了过滤 pyc 文件
* fencview 增强 vim 的编码检测
* vim-markdown 高亮 markdown 格式
* snipmate 代码补全
* jslint js 语法校验
* tagbar js 代码大纲视图
* Gist 分享代码到 github 的小工具
* vim-repeat 增强 vim 的 repeat 功能
* web-indent JavaScript 的语法缩进
* jsbeautify JavaScript 代码格式化，快捷键是 <code>&lt;Leader&gt;ff</code>
* Scrath 打开一个临时的缓冲区随便记录东西，快捷键是 <code>&lt;Leader&gt;S</code>
* genutils 给 vim 添加一些函数库
* molokai 配色
* desertEx 配色

### 安装新插件

在 <code>.vim</code> 目录下执行

    git submodule add '插件的 github 检出地址' 'bundle/插件名'
    git submodule init
    git submodule update
