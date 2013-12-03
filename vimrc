"====================================
"    FileName: .vimrc
"    Author:   arming
"    Version:  1.0.0
"    Email:    cloudniw1@gmail.com
"    Blog: http://mrmign.github.com
"    Date: 2013-11-30
"=============================================

"==================================
"    Vim基本配置
"===================================

"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
set backspace=indent,eol,start

"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"当一行文字很长时取消换行
"set nowrap

"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
set history=1000

"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile

"突出现实当前行列
set cursorline
"set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

set hlsearch
"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
syntax enable
syntax on

"指定配色方案为256色
set t_Co=256

"设置搜索时忽略大小写
set ignorecase

"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a

"设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab

"设置编码方式
set encoding=utf-8
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1



"检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件
filetype plugin on
"启动智能补全
filetype plugin indent on

let mapleader=","

"多窗口跳转
"Move between split windows 
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
"关闭窗口
nnoremap <leader>q <c-w>q
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

nnoremap ; :

"tab 切换 
nnoremap <leader>n :tabNext<CR>
nnoremap <leader>p :tabprevious<CR>
"开始使用Vundle的必须配置
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

""使用Vundle来管理Vundle
Bundle 'gmarik/vundle'

"PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
""vim有一个状态栏 加上powline则有两个状态栏
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'

Bundle 'Valloric/YouCompleteMe'
" 跳转到定义位置 GoToDefinition
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py' 
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_key_list_select_completion = ["<C-TAB>", "<Down>"] 
"let g:ycm_key_list_previous_completion = ["<C-S-TAB>", "<Up>"] 

Bundle 'scrooloose/nerdtree'
nnoremap <leader>ll :NERDTree<CR>

Bundle 'Lokaltog/vim-easymotion'
"<leader><leader>w word motion
"<leader><leader>f || <leader><leader>t 按字符查，如',,ft', t 为要查找到字符

Bundle 'scrooloose/syntastic'
"显示错误位置 
nnoremap <leader>be :Errors<CR>

Bundle 'scrooloose/nerdcommenter'
"<leader>cc , <leader>cn 每行都加注释符/*..*/
"<leader>cl 注释一行,
"也可注释多行需要选择,注释单行不需要选择，只要在行内就可。
"<leader>cu 取消注释
"<leader>cm 块注释，在选择块加/* ... 
"<leader>cb 注释左右对齐
"<leader>cA 在行尾添加注释符
"<leader>ci toggles 所选行的注释状态，向相反方向改
"<leader>c$ 从光标注释到行尾

Bundle 'flazz/vim-colorschemes'
Bundle 'vim-scripts/tlib'
"Bundle 'honza/vim-snippets'
"set runtimepath+=~/.vim/bundle/vim-snippets
"Bundle 'MarcWeber/ultisnips'
"set runtimepath+=~/.vim/bundle/ultisnips
"let g:UltiSnips = {}
""let g:UltiSnips.ExpandTrigger="<s-space>"
"let g:UltiSnips.ExpandTrigger="<c-j>"
"let g:UltiSnips.JumpForwardTrigger="<c-j>"
"let g:UltiSnips.JumpBackwardTrigger="<c-k>"
"let g:UltiSnips.ListSnippets="<c-l>"
"let g:UltiSnips.UltiSnips_ft_filter = {
                "\ 'default' : {'filetypes': ['all'] },
                "\ 'all' : {'filetypes': ['all'] },
                "\ 'cpp' : {'filetypes': ['cpp', 'all'], 'dir-regex': '[._]vim/UltiSnips$' },
                "\ }
"let g:UltiSnips.always_use_first_s nippet = 1
Bundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

Bundle 'ervandew/supertab'
"let g:SuperTabDefaultCompletionType = "<C-Tab>"
Bundle 'vim-scripts/taglist.vim'
nnoremap <leader>t :TlistToggle<CR>
Bundle 'brookhong/cscope.vim'
"Bundle 'vim-scripts/header.vim'
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'
Bundle 'plasticboy/vim-markdown'
"]]: go to next header
"[[: go to previous header
"][: go to next sibling header if any
"[]: go to previous sibling header if any
"]c: go to Current header
"]u: go to parent header (Up)
Bundle 'vim-scripts/a.vim'
":A switches to the header file corresponding to the current file being edited (or vise versa)
":AS splits and switches
":AV vertical splits and switches
":AT new tab and switches
":AN cycles through matches
":IH switches to file under cursor
":IHS splits and switches
":IHV vertical splits and switches
":IHT new tab and switches
":IHN cycles through matches
"<Leader>ih switches to file under cursor
"<Leader>is switches to the alternate file of file under cursor (e.g. on  <foo.h> switches to foo.cpp)
"<Leader>ihn cycles through matches
"Vundle配置必须 开启插件
Bundle 'terryma/vim-multiple-cursors'
Bundle 'vim-scripts/nerdtree-ack'
Bundle 'mileszs/ack.vim'
Bundle 'terryma/vim-expand-region'
"在括号，引号中自动选择 + 增加范围 _ 减少范围
Bundle 'tmhedberg/matchit'
"extend %
Bundle 'tpope/vim-abolish'
"imporve search & replace
filetype plugin indent on

