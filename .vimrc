" 增加快捷键键位(键盘映射) noremap
" i 光标前 I 行首 a 光标后 A 行尾 o 下行 O 上行
" x 删除光标后一个字符 X 撒谎拿出光标前一个字符
" dd 剪切一行 p 粘贴 y 复制
" c 删除并进入写入模式
" 名词 w=word, s=sentence, p=paragraph, t=tag
" 动词 y=yank, p=paste, d=delete, c=change
" 动词 >=向后缩进 <=向前缩进
" 动词 zf=折叠   zd=展开
" 范围 i=inner, a=a or around 

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

nnoremap ： :
" 打开代码高亮
syntax on
" 设置不要与之前的vi相容
set nocompatible

" vim-plug插件管理
call plug#begin('~/.vim/plugged')
" 自动补齐
Plug 'neoclide/coc.nvim', {'brach': 'release'}
" 安装括号匹配的插件
Plug 'jiangmiao/auto-pairs'
" 安装底部状态增强/主题美化插件
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 安装markdown预览 
Plug 'iamcco/mathjax-support-for-mkdp', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'iamcco/markdown-preview.vim', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
" 模糊搜索工具fzf
Plug 'junegunn/fzf.vim'
" 安装批量替换引号括号等
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
call plug#end()

" 配置配色方案
let g:molokai_original = 1
let g:rehash256 = 1

" 使用F5调试程序
noremap <F5> :call RunProgram()<CR>
func! RunProgram()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python3 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    endif
endfunc
