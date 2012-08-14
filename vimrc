"Basics
set nocompatible
set cpoptions=aABceFsmq
filetype plugin indent on
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/backup
set clipboard+=unnamed
set directory=~/.vim/tmp
set fileformats=unix,dos,mac
set hidden
set iskeyword+=_,$,@,%,#
set mouse=a
set noerrorbells
set whichwrap=b,s,h,l,<,>,[,]
set wildmenu
set wildignore=*.dll,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmode=list:longest

"UI
syntax on
:colorscheme zenburn
set background=light
set t_Co=256
set cursorcolumn
set cursorline
set incsearch
set laststatus=2
set lazyredraw
set linespace=0
set list
set listchars=tab:>-,trail:-
set matchtime=5
set nohlsearch
set nostartofline
set novisualbell
set number
set numberwidth=5
set report=0
set ruler
set scrolloff=10
set shortmess=aOstT
set showcmd
set showmatch
set sidescrolloff=10
set guioptions-=T "remove toolbar

"Text Formatting
set completeopt=
"set expandtab
set formatoptions=rq
set ignorecase
set infercase
set nowrap
set shiftround
set smartcase
set shiftwidth=4
set softtabstop=4
set tabstop=4

"Folding
set foldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag

function SimpleFoldText()
    return getline(v:foldstart).' '
endfunction
set foldtext=SimpleFoldText()

"Plugin Settings
let b:matchignore=1
let perl_extended_vars=1
let Tlist_Auto_Open=0
let Tlist_Compact_Format=1
let Tlist_Ctags_Cmd='ctags'
let Tlist_Enable_Fold_Column=0
let Tlist_Exist_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=0
let Tlist_Sort_Type="name"
let Tlist_WinWidth=40

"Mappings
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>

nmap ,n :NERDTreeToggle<CR>
nmap ,m :TagbarToggle<CR>
noremap ,a :Ack
nmap ,t :CommandT<CR>
nmap ,b :CommandTBuffer<CR>
" PHP lint checker
nmap ,p :! php -l %<CR>
" Executes PHP file
nmap ,p :! php -q %<CR>

autocmd VimEnter * NERDTree
autocmd VimEnter * TagbarOpen
if has("gui_running")
    set guifont=Monaco:h12
	:colorscheme solarized
	let g:solarized_contrast="low"
endif

" Ack Options
let g:ackprg="ack -H --nocolor --nogroup --column --type-add php=.phtml"

" Tagbar Options
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=26

"Buffers
noremap <silent> <C-left> :bprev<CR>
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-right> :bnext<CR>
noremap <silent> <C-l> :bnext<CR>

" Moving between windows
nnoremap ,h <C-w>h
nnoremap ,l <C-w>l
nnoremap ,j <C-w>j
nnoremap ,k <C-w>k
nnoremap ,wo <C-w>o
nnoremap ,wv <C-w>v<C-w>l
nnoremap ,ws <C-w>s
nnoremap ,ww <C-w><C-w>


"Autocommands
au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=8
au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=8
au BufRead,BufNewFile *.phtml set filetype=phtml
au BufRead,BufNewFile *.as set filetype=actionscript
au BufRead,BufNewFile *.erl set filetype=erlang
