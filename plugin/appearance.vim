" 设置主题
try
    colorscheme molokai
catch
    colorscheme darkblue
endtry
" 设置tab键为4个空格
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 设置tab转换为4个空格
set expandtab
" 高亮匹配括号
set showmatch
" 设置为双字宽显示，否则有些字符无法完全显示如: ☆
set ambiwidth=double
"显示行数
set number
" 显示相对行数
set relativenumber
" 设置tab页签总是显示出来
set showtabline=2
" 设置下方显示行、列和百分比
set ruler
" 设置一些常用事件
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
" 设置分割的时候新窗口在下方/右方打开
set splitbelow
set splitright
" 自动换行
set wrap
set linebreak
" 显示按下的字符
set showcmd
set noshowmode
" 自动补全
set wildmenu
" 搜索高亮
set hlsearch
" 查询时一面输入一面高亮
set incsearch
" 查询时忽略大小写
set ignorecase
set smartcase
" 永远显示状态栏
set laststatus=2 
" 设置滚动时的预览行数
set scrolloff=15
set list
set listchars=tab:<+>,space:.
" ~/.vim/.vimrc
