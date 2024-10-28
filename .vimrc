set nocompatible

set laststatus=2
set t_Co=256
set encoding=utf-8
set autoindent
set smartindent
set magic
set number
set scrolloff=3
set sidescroll=3
set ruler
set cc=80
set nowrap
set ignorecase
set smartcase
set splitbelow
set hidden
set notimeout
set incsearch
set showmatch
set hlsearch
set mouse=a
set noswapfile
set nofoldenable
set lazyredraw
set t_Co=256

filetype on
filetype plugin on
filetype indent on

syntax enable
" :color shine
:colorscheme jellybeans

autocmd FileType markdown setlocal tw=80 et ts=2 sw=2
autocmd FileType text setlocal tw=80
autocmd FileType c,cpp set set tabstop=4 shiftwidth=4 expandtab
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType html,xhtml,css,xml,xslt set shiftwidth=2 softtabstop=2
autocmd FileType vim,lua,nginx set shiftwidth=2 softtabstop=2
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xhtml,html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType asm set noexpandtab shiftwidth=8 softtabstop=0 syntax=nasm

" Enhanced keyboard mappings
"
" in normal mode F2 will save the file
nmap <F2> :w<CR>

" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i

" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

map <F5> :make<CR>
map <F6> :make clean all<CR>

set notermguicolors
