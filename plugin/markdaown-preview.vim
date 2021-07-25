" 配置markdown预览插件
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'google-chrome'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
" 设置键盘映射 F8 预览 F9 关闭预览
nmap <silent> <F8> <Plug>MarkdownPreview        
imap <silent> <F8> <Plug>MarkdownPreview        
nmap <silent> <F9> <Plug>StopMarkdownPreview    
imap <silent> <F9> <Plug>StopMarkdownPreview    
