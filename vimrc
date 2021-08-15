" >> 1. 综合设置
" 定义快捷键的前缀，即<Leader>
let mapleader = ";"

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 左右分屏，在右边打开新窗口
set splitright


" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase

" 关闭兼容模式
set nocompatible

" vim 自身命令行模式智能补全
set wildmenu
" <<

" >> vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/vim-easymotion'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'l3nkz/ycmconf'
Plugin 'sansyrox/vim-python-virtualenv'

Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'


" Track the engine.
"
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'Valloric/YouCompleteMe'

Plugin 'Chiel92/vim-autoformat'


" 高亮显示 leader+k
Plugin 'lfv89/vim-interestingwords'

Plugin 'kh3phr3n/python-syntax'
Plugin 'gcmt/wildfire.vim'

" 文件模板
Plugin 'tibabit/vim-templates'

" 自动括号
Plugin 'jiangmiao/auto-pairs'

" git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'



" 插件列表结束
call vundle#end()
filetype plugin indent on
" <<


" >>
" 营造专注气氛

" 禁止光标闪烁 终端闪烁没用
set gcr=a:block-blinkoff0


" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" <<

" >>
" 辅助信息

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 高亮显示搜索结果
set hlsearch

set noeb

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 禁止折行
set nowrap

" 缩进可视化插件 Indent Guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=0
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" 开启语法高亮功能
syntax enable
" " 允许用指定语法高亮配色方案替换默认方案
syntax on

let python_highlight_all=1


"关闭错误提示音
set vb t_vb=

"关闭闪屏
au GuiEnter * set t_vb=
" <<

" >>
" 查找

" 设置ctrlsf 使用ag
let g:ctrlsf_ackprg = 'ag' 

" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>

" <<



"NerdTree####################################################
let NERDTreeWinPos="right"
""去除第一行的帮助提示
let NERDTreeMinimalUI=1
"在左边占多宽
let NERDTreeWinSize=28
""不高亮显示光标所在的文件
let NERDTreeHighlightCursorline=0
"当前目录的设定
let NERDTreeChDirMode = 2
""自动退出
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"打开vim时自动打开
" autocmd vimenter * NERDTree
""<F3>作为toggle
nmap <F3> :NERDTreeToggle<CR>

" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\~$','\.swp']
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 自动修改根目录
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>






"Tagbar######################################################
let g:tagbar_left = 1
"去除第一行的帮助信息
let tagbar_width=32
let g:tagbar_compact = 1
""当编辑代码时，在Tagbar自动追踪变量
let g:tagbar_autoshowtag = 1
"个人爱好，展开关闭文件夹的图标
let g:tagbar_iconchars = ['▸', '▾']
""<F3>作为toggle
nmap <F2> :TagbarToggle<CR>
"打开vim时自动打开
"autocmd VimEnter * nested :TagbarOpen
"wincmd l
""如果不加这句，打开vim的时候当前光标会在Nerdtree区域
autocmd VimEnter * wincmd l

" 设置 ctags 对哪些代码标识符生成标签


nmap z/ <Plug>(incsearch-easymotion-/)
nmap z? <Plug>(incsearch-easymotion-?)
nmap zg/ <Plug>(incsearch-easymotion-stay)
nmap <silent>c/ :noh<CR>


" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable





" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" 基于标签的代码导航

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

let g:ycm_confirm_extra_conf = 0
let g:ycm_server_use_vim_stdout = 0

let g:ycm_python_interpreter_path = '/Users/handeng/opt/anaconda3/bin/python'
let g:ycm_path_to_python_interpreter = '/usr/local/bin/python3'                        
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'


let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'


nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_log_level='debug'



" >>
" 内容替换

" 快捷替换
let g:multi_cursor_next_key='<S-n>'
let g:multi_cursor_skip_key='<S-k>'

" 精准替换
" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

" <<

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickly Run
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python3 %'
    elseif &filetype == 'sh'
        :!time bash %
    endif
endfunc



"F3自动格式化代码
nmap <F4> :Autoformat<CR>
let g:autoformat_verbosemode=1


set tags=tags;
set autochdir



if $COLORTERM == 'truecolor'
    set termguicolors
    colorscheme molokai
else

    set term=xterm
    set t_Co=256
    let g:solarized_termtrans = 1
    colorscheme molokai
    "colorscheme solarized
    "colorscheme phd

endif

set guifont=Monaco:32

hi Normal ctermbg=none

" 虚拟环境
let g:python3_host_prog='/usr/bin/python3'

" >>
" 快速选中结对符内的文本

" 快捷键
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)

" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

" 文件模板
let g:tmpl_search_paths = ['~/.template']
let g:tmpl_author_email = 'wingsdh@gmail.com'



" <<


