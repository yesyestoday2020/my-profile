"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto reload init.vim when editing it
autocmd! bufwritepost ~/.config/nvim/init.vim :source ~/.config/nvim/init.vim

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 2 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" basic map
inoremap jj <Esc>
let mapleader = ","      " 定义<leader>键
let g:maplocalleader = '<space>'
noremap J 5j
noremap K 5k
noremap H ^
noremap L $
vnoremap J 5j
vnoremap K 5k

" window motion
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

" split window
noremap <space>wk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <space>wj :set splitbelow<CR>:split<CR>
noremap <space>wh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <space>wl :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible         " 设置不兼容原始vi模式
set clipboard=unnamed
set noshowmode
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set cursorline
set cursorcolumn
set numberwidth=1
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set timeout
set suffixesadd=.html,.css,.js,.vue,.rb,.vim,.sh  "跳转到光标下的文件

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set smartindent
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
filetype indent on       " 自适应不同语言的智能缩进
set wrap                 " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set foldenable           " 禁用折叠代码
set textwidth=80
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

call plug#begin('~/.local/share/nvim/plugged')
" UI
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
" Plug 'liuchengxu/space-vim-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim 配设方案设计工具包
Plug 'lifepillar/vim-colortemplate'

Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/vim-cursorword'

" 文档工具
Plug 'yianwillis/vimcdoc'
Plug 'rizzatti/dash.vim'

" 代码编辑
Plug 'Yggdroot/indentLine'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'junegunn/vim-slash'
Plug 'tpope/vim-fugitive'

" text object
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function'
Plug 'terryma/vim-expand-region'

Plug 'terryma/vim-smooth-scroll'

Plug 'rhysd/clever-f.vim'

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" web开发
Plug 'mattn/emmet-vim',{ 'for': ['html', 'css','scss'] }
Plug 'othree/html5.vim',{'for':['html']}
Plug 'AndrewRadev/tagalong.vim'
Plug 'hail2u/vim-css3-syntax',{'for':['css','scss']}
Plug 'ap/vim-css-color'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/webapi-vim'
Plug 'posva/vim-vue'

" coc.nvim代码补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tjdevries/coc-zsh',{'for':['sh']}

Plug 'Yggdroot/LeaderF'
Plug 'godlygeek/tabular'
Plug 'SidOfc/mkdx'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'vimwiki/vimwiki'
Plug 'chrisbra/csv.vim',{'for':['csv']}

Plug 'jceb/vim-orgmode'
Plug 'vim-scripts/utl.vim'

Plug 'janko/vim-test'

" 时间统计
Plug 'wakatime/vim-wakatime'

" 生成随机文本
Plug 'ftan84/vim-khaled-ipsum'

call plug#end()

" 安装、更新、删除插件
noremap <leader><leader>i :PlugInstall<cr>
noremap <leader><leader>u :PlugUpdate<cr>
noremap <leader><leader>c :PlugClean<cr>

" color sheme
set background=dark
colorscheme gruvbox

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#coc#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" nerdtree
let g:NERDTreeWinPos = "right"
noremap <silent> <leader>n :NERDTreeToggle<cr>
inoremap <silent> <leader>n <esc> :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

" vim-devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_startify = 1

" indentline
let g:indentLine_enabled = 1
let g:indentLine_color_term = 85
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_first_char = '|'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_faster = 1

" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\ 'jsx': ['stylelint', 'eslint'],
\ 'javascript': ['stylelint', 'eslint'],
\ }
let g:ale_linter_aliases = {'jsx': 'css'}
let g:ale_fixers = {
\   '*': ['prettier', 'eslint'],
\   'javascript': ['prettier', 'eslint'],
\   'graphql': ['prettier', 'eslint'],
\   'gql': ['prettier', 'eslint']
\}

let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'
nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" tagbar
let g:tagbar_width = 35
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_rightt=1
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
noremap <silent> <leader>t :TagbarToggle<cr>
inoremap <silent> <leader>t <esc> :TagbarToggle<cr>

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" vim-easymotion
let g:EasyMotion_smartcase = 1
map <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)

" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" tabular
noremap <leader>\ :Tab /\|<cr>
noremap <leader>= :Tab /=<cr>

" LeaderF
noremap <leader>f :LeaderfFile ~<cr>
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PopupHeight = float2nr(&lines * 0.6)
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
" let g:Lf_UseCache = 0

" emmet
let g:user_emmet_install_global = 0
let g:user_emmet_mode='a' 

" python3
let g:python3_host_prog = '/usr/local/bin/python3'

" mkdx
let g:mkdx#settings = {
    \ 'image_extension_pattern': 'a\?png\|jpe\?g\|gif', 
    \ 'restore_visual':  1, 
    \ 'enter': { 'enable': 1, 
    \ 'shift': 0, 
    \ 'o': 1, 
    \ 'shifto': 1, 
    \ 'malformed': 1 }, 
    \ 'map':{ 'prefix': '<localleader>', 'enable': 0 }, 
    \ 'tokens':  { 'enter':  ['-', '*', '>'],
    \ 'bold':   '**', 'italic': '*',
    \ 'strike': '',
    \ 'list':   '-',  'fence':  '',
    \ 'header': '#' },
    \ 'checkbox': { 'toggles': [' ', '-', 'x'],
    \ 'update_tree': 2,
    \ 'initial_state': ' ' },
    \ 'toc':{ 'text':       "TOC",
    \ 'list_token': '-',
    \ 'position': 0,
    \ 'update_on_write':   0,
    \ 'details': {
    \      'enable':  0,
    \      'summary': '{{toc.text}}',
    \      'nesting_level': -1,
    \      'child_count': 5,
    \      'child_summary': 'show {{count}} items'
    \       }
    \  },
    \ 'table': { 'divider': '|',
    \            'header_divider': '-',
    \            'align': {
    \               'left':    [],
    \               'right':   [],
    \               'center':  [],
    \               'default': 'center'
    \            }
    \          },
    \ 'links':{ 'external': {
    \              'enable':     0,
    \              'timeout':    3,
    \              'host':       '',
    \              'relative':   1,
    \              'user_agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like					Gecko) Chrome/9001.0.0000.000 vim-mkdx/1.9.0'
    \               },
    \           'fragment': {
    \              'jumplist': 1,
    \              'complete': 1
    \               }
    \         },
    \ 'highlight':    { 'enable': 1 },
    \ 'auto_update':  { 'enable': 1 },
    \ 'fold':         { 'enable': 1, 'components': ['toc', 'fence'] }
    \ }

" markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_browser = ''
let g:mkdp_open_ip = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
	\ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

nmap <leader><C-o> <Plug>MarkdownPreview
nmap <leader><C-s> <Plug>MarkdownPreviewStop
nmap <leader><C-p> <Plug>MarkdownPreviewToggle


" coc
set shell=/bin/sh
set nowritebackup
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" 代码补全设置
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" 代码片段补全设置
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Using CocList
" Show all diagnostics
noremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
noremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
noremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
noremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
noremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
noremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
noremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
noremap <silent> <space>p  :<C-u>CocListResume<CR>

" coc-translator
" popup
nmap <Leader>tt <Plug>(coc-translator-p)

" echo
nmap <Leader>te <Plug>(coc-translator-e)

" replace
nmap <Leader>tr <Plug>(coc-translator-r)

" coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

" waketime
let g:wakatime_PythonBinary = '/usr/bin/python'  " (Default: 'python')

" 自定义代码片段
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsEnableSnipMate = 1
let g:UltiSnipsExpandTrigger="<c-r>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips',"UltiSnips"]
