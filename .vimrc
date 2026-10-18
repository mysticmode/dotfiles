set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

Plugin 'rust-lang/rust.vim'

Plugin 'fatih/vim-go'

call vundle#end()

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

autocmd FileType markdown setlocal tw=80 et ts=2 sw=2
autocmd FileType text setlocal tw=80
autocmd FileType c,cpp set tabstop=4 shiftwidth=4 expandtab
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

" FZF.vim
set rtp+=/usr/local/opt/fzf
" Map Ctrl+p to search files
nnoremap <C-p> :Files<CR>

" Map Ctrl+b to search open buffers
nnoremap <C-b> :Buffers<CR>

" Map Leader+f to look for text with Ripgrep
nnoremap <leader>f :Ag<CR>

" Map Leader+h to search file history
nnoremap <leader>h :History<CR>

" Golang customizations
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_bin_path = expand("$HOME/go/bin")
let g:go_auto_type_info = 1

" Syntax Highlighting for Golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Go keymaps
" Type Info
au FileType go nmap <Leader>i <Plug>(go-info)
" GoDoc
au FileType go nmap <Leader>gd <Plug>(go-doc)
au Filetype go nmap <Leader>gv <Plug>(go-doc-vertical)
" Build/Run/Test
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
" GoDef
au FileType go nmap gd <Plug>(go-def)
au FileType go nmap <Leader>gs <Plug>(go-def-split)
au FileType go nmap <Leader>gv <Plug>(go-def-vertical)
au FileType go nmap <Leader>gt <Plug>(go-def-tab)


" Markdown preview
let g:instant_markdown_autostart = 1
let g:instant_markdown_slow = 0   " renders on every keystroke

let g:rustfmt_autosave = 1

set notermguicolors

let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_custom_term_colors = 1
let base16colorspace=256
colorscheme darkblue
highlight CursorLine cterm=BOLD ctermbg=235 ctermfg=NONE
